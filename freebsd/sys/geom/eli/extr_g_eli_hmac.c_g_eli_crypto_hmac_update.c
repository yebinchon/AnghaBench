
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hmac_ctx {int innerctx; } ;


 int SHA512_Update (int *,int const*,size_t) ;

void
g_eli_crypto_hmac_update(struct hmac_ctx *ctx, const uint8_t *data,
    size_t datasize)
{

 SHA512_Update(&ctx->innerctx, data, datasize);
}
