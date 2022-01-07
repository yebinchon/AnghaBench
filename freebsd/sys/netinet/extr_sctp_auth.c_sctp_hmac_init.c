
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int sha256; int sha1; } ;
typedef TYPE_1__ sctp_hash_context_t ;





 int SCTP_SHA1_INIT (int *) ;
 int SCTP_SHA256_INIT (int *) ;

__attribute__((used)) static void
sctp_hmac_init(uint16_t hmac_algo, sctp_hash_context_t *ctx)
{
 switch (hmac_algo) {
 case 129:
  SCTP_SHA1_INIT(&ctx->sha1);
  break;
 case 128:
  SCTP_SHA256_INIT(&ctx->sha256);
  break;
 case 130:
 default:

  return;
 }
}
