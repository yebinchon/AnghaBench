
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int ;
struct aes_xts_ctx {int* tweak; int key1; } ;
typedef int block ;


 int AES_XTS_ALPHA ;
 int AES_XTS_BLOCKSIZE ;
 int bzero (int*,int) ;
 int rijndael_decrypt (int *,int*,int*) ;
 int rijndael_encrypt (int *,int*,int*) ;

__attribute__((used)) static void
aes_xts_crypt(struct aes_xts_ctx *ctx, u_int8_t *data, u_int do_encrypt)
{
 u_int8_t block[AES_XTS_BLOCKSIZE];
 u_int i, carry_in, carry_out;

 for (i = 0; i < AES_XTS_BLOCKSIZE; i++)
  block[i] = data[i] ^ ctx->tweak[i];

 if (do_encrypt)
  rijndael_encrypt(&ctx->key1, block, data);
 else
  rijndael_decrypt(&ctx->key1, block, data);

 for (i = 0; i < AES_XTS_BLOCKSIZE; i++)
  data[i] ^= ctx->tweak[i];


 carry_in = 0;
 for (i = 0; i < AES_XTS_BLOCKSIZE; i++) {
  carry_out = ctx->tweak[i] & 0x80;
  ctx->tweak[i] = (ctx->tweak[i] << 1) | (carry_in ? 1 : 0);
  carry_in = carry_out;
 }
 if (carry_in)
  ctx->tweak[0] ^= AES_XTS_ALPHA;
 bzero(block, sizeof(block));
}
