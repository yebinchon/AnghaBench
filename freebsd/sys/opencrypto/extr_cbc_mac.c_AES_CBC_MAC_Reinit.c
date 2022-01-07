
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct aes_cbc_mac_ctx {int cryptDataLength; int const* nonce; int nonceLength; size_t authDataCount; size_t blockIndex; int* staging_block; int authDataLength; int block; int rounds; int keysched; } ;
typedef int sizeVal ;
typedef int b0 ;


 int AES_CBC_MAC_HASH_LEN ;
 int CCM_CBC_BLOCK_LEN ;
 int KASSERT (int,char*) ;
 int bcopy (int const*,int*,int) ;
 int explicit_bzero (int*,int) ;
 int htobe16 (int) ;
 int htobe32 (unsigned long long) ;
 int htobe64 (unsigned long long) ;
 int rijndaelEncrypt (int ,int ,int*,int ) ;

void
AES_CBC_MAC_Reinit(struct aes_cbc_mac_ctx *ctx, const uint8_t *nonce, uint16_t nonceLen)
{
 uint8_t b0[CCM_CBC_BLOCK_LEN];
 uint8_t *bp = b0, flags = 0;
 uint8_t L = 0;
 uint64_t dataLength = ctx->cryptDataLength;

 KASSERT(nonceLen >= 7 && nonceLen <= 13,
     ("nonceLen must be between 7 and 13 bytes"));

 ctx->nonce = nonce;
 ctx->nonceLength = nonceLen;

 ctx->authDataCount = 0;
 ctx->blockIndex = 0;
 explicit_bzero(ctx->staging_block, sizeof(ctx->staging_block));







 L = 15 - nonceLen;

 flags = ((ctx->authDataLength > 0) << 6) +
     (((AES_CBC_MAC_HASH_LEN - 2) / 2) << 3) +
     L - 1;




 b0[0] = flags;
 bcopy(nonce, b0 + 1, nonceLen);
 bp = b0 + 1 + nonceLen;


 for (uint8_t *dst = b0 + sizeof(b0) - 1; dst >= bp; dst--) {
  *dst = dataLength;
  dataLength >>= 8;
 }

 rijndaelEncrypt(ctx->keysched, ctx->rounds, b0, ctx->block);

 if (ctx->authDataLength) {
  size_t addLength;
  if (ctx->authDataLength < ((1<<16) - (1<<8))) {
   uint16_t sizeVal = htobe16(ctx->authDataLength);
   bcopy(&sizeVal, ctx->staging_block, sizeof(sizeVal));
   addLength = sizeof(sizeVal);
  } else if (ctx->authDataLength < (1ULL<<32)) {
   uint32_t sizeVal = htobe32(ctx->authDataLength);
   ctx->staging_block[0] = 0xff;
   ctx->staging_block[1] = 0xfe;
   bcopy(&sizeVal, ctx->staging_block+2, sizeof(sizeVal));
   addLength = 2 + sizeof(sizeVal);
  } else {
   uint64_t sizeVal = htobe64(ctx->authDataLength);
   ctx->staging_block[0] = 0xff;
   ctx->staging_block[1] = 0xff;
   bcopy(&sizeVal, ctx->staging_block+2, sizeof(sizeVal));
   addLength = 2 + sizeof(sizeVal);
  }
  ctx->blockIndex = addLength;




  ctx->authDataLength += addLength;
  ctx->authDataCount = addLength;
 }
}
