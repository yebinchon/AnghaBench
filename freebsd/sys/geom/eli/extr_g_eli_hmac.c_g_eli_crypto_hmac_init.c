
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct hmac_ctx {int outerctx; int innerctx; } ;
typedef int key ;
typedef int k_opad ;
typedef int k_ipad ;
typedef int SHA512_CTX ;


 int SHA512_Final (int*,int *) ;
 int SHA512_Init (int *) ;
 int SHA512_Update (int *,...) ;
 int bcopy (char const*,int*,size_t) ;
 int bzero (int*,int) ;
 int explicit_bzero (int*,int) ;

void
g_eli_crypto_hmac_init(struct hmac_ctx *ctx, const char *hkey,
    size_t hkeylen)
{
 u_char k_ipad[128], k_opad[128], key[128];
 SHA512_CTX lctx;
 u_int i;

 bzero(key, sizeof(key));
 if (hkeylen == 0)
  ;
 else if (hkeylen <= 128)
  bcopy(hkey, key, hkeylen);
 else {

  SHA512_Init(&lctx);
  SHA512_Update(&lctx, hkey, hkeylen);
  SHA512_Final(key, &lctx);
 }


 for (i = 0; i < sizeof(key); i++) {
  k_ipad[i] = key[i] ^ 0x36;
  k_opad[i] = key[i] ^ 0x5c;
 }
 explicit_bzero(key, sizeof(key));

 SHA512_Init(&ctx->innerctx);
 SHA512_Update(&ctx->innerctx, k_ipad, sizeof(k_ipad));
 explicit_bzero(k_ipad, sizeof(k_ipad));

 SHA512_Init(&ctx->outerctx);
 SHA512_Update(&ctx->outerctx, k_opad, sizeof(k_opad));
 explicit_bzero(k_opad, sizeof(k_opad));
}
