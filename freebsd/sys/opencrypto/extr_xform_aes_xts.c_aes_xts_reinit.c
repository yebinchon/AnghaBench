
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int64_t ;
typedef size_t u_int ;
struct aes_xts_ctx {int* tweak; int key2; } ;
typedef scalar_t__ caddr_t ;


 size_t AES_XTS_IVSIZE ;
 int bcopy (int const*,int*,size_t) ;
 int bzero (int*,size_t) ;
 int rijndael_encrypt (int *,int*,int*) ;

__attribute__((used)) static void
aes_xts_reinit(caddr_t key, const u_int8_t *iv)
{
 struct aes_xts_ctx *ctx = (struct aes_xts_ctx *)key;
 u_int64_t blocknum;
 u_int i;





 bcopy(iv, &blocknum, AES_XTS_IVSIZE);
 for (i = 0; i < AES_XTS_IVSIZE; i++) {
  ctx->tweak[i] = blocknum & 0xff;
  blocknum >>= 8;
 }

 bzero(ctx->tweak + AES_XTS_IVSIZE, AES_XTS_IVSIZE);

 rijndael_encrypt(&ctx->key2, ctx->tweak, ctx->tweak);
}
