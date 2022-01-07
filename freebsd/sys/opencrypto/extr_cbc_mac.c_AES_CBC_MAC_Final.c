
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct aes_cbc_mac_ctx {scalar_t__ blockIndex; int* staging_block; int* block; int rounds; int keysched; int nonceLength; int nonce; int cryptDataCount; } ;
typedef int s0 ;


 size_t AES_CBC_MAC_HASH_LEN ;
 int CCM_CBC_BLOCK_LEN ;
 int bcopy (int ,int*,int ) ;
 int bzero (int*,int) ;
 int explicit_bzero (int*,int) ;
 int rijndaelEncrypt (int ,int ,int*,int*) ;
 int xor_and_encrypt (struct aes_cbc_mac_ctx*,int*,int*) ;

void
AES_CBC_MAC_Final(uint8_t *buf, struct aes_cbc_mac_ctx *ctx)
{
 uint8_t s0[CCM_CBC_BLOCK_LEN];





 if (ctx->blockIndex != 0) {
  xor_and_encrypt(ctx, ctx->staging_block, ctx->block);
  ctx->cryptDataCount += ctx->blockIndex;
  ctx->blockIndex = 0;
  explicit_bzero(ctx->staging_block, sizeof(ctx->staging_block));
 }
 bzero(s0, sizeof(s0));
 s0[0] = (15 - ctx->nonceLength) - 1;
 bcopy(ctx->nonce, s0 + 1, ctx->nonceLength);
 rijndaelEncrypt(ctx->keysched, ctx->rounds, s0, s0);
 for (size_t indx = 0; indx < AES_CBC_MAC_HASH_LEN; indx++)
  buf[indx] = ctx->block[indx] ^ s0[indx];
 explicit_bzero(s0, sizeof(s0));
}
