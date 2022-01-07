
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hmac_ctx {int outerctx; int innerctx; } ;
typedef struct hmac_ctx u_char ;
typedef int digest ;


 int SHA512_Final (struct hmac_ctx*,int *) ;
 int SHA512_MDLEN ;
 int SHA512_Update (int *,struct hmac_ctx*,int) ;
 int bcopy (struct hmac_ctx*,int *,size_t) ;
 int explicit_bzero (struct hmac_ctx*,int) ;

void
g_eli_crypto_hmac_final(struct hmac_ctx *ctx, uint8_t *md, size_t mdsize)
{
 u_char digest[SHA512_MDLEN];


 SHA512_Final(digest, &ctx->innerctx);


 SHA512_Update(&ctx->outerctx, digest, sizeof(digest));
 SHA512_Final(digest, &ctx->outerctx);

 explicit_bzero(ctx, sizeof(*ctx));

 if (mdsize == 0)
  mdsize = SHA512_MDLEN;
 bcopy(digest, md, mdsize);
 explicit_bzero(digest, sizeof(digest));
}
