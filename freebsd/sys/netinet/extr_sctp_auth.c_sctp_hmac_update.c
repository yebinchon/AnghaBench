
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int sha256; int sha1; } ;
typedef TYPE_1__ sctp_hash_context_t ;





 int SCTP_SHA1_UPDATE (int *,int *,int ) ;
 int SCTP_SHA256_UPDATE (int *,int *,int ) ;

__attribute__((used)) static void
sctp_hmac_update(uint16_t hmac_algo, sctp_hash_context_t *ctx,
    uint8_t *text, uint32_t textlen)
{
 switch (hmac_algo) {
 case 129:
  SCTP_SHA1_UPDATE(&ctx->sha1, text, textlen);
  break;
 case 128:
  SCTP_SHA256_UPDATE(&ctx->sha256, text, textlen);
  break;
 case 130:
 default:

  return;
 }
}
