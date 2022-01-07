
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct aes_cbc_mac_ctx {int keysched; int rounds; } ;


 int rijndaelKeySetupEnc (int ,int const*,int) ;

void
AES_CBC_MAC_Setkey(struct aes_cbc_mac_ctx *ctx, const uint8_t *key, uint16_t klen)
{
 ctx->rounds = rijndaelKeySetupEnc(ctx->keysched, key, klen * 8);
}
