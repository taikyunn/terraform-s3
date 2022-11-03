# AWSを使用する宣言
provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "platform-my-test-bucket"
  acl    = "private"

  # バージョニング設定
  versioning {
    enabled = true
  }

  # デフォルトの暗号化
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
