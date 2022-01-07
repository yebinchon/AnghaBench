
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hmac_ctx {int dummy; } ;


 int g_eli_crypto_hmac_final (struct hmac_ctx*,int *,size_t) ;
 int g_eli_crypto_hmac_init (struct hmac_ctx*,char const*,size_t) ;
 int g_eli_crypto_hmac_update (struct hmac_ctx*,int const*,size_t) ;

void
g_eli_crypto_hmac(const char *hkey, size_t hkeysize, const uint8_t *data,
    size_t datasize, uint8_t *md, size_t mdsize)
{
 struct hmac_ctx ctx;

 g_eli_crypto_hmac_init(&ctx, hkey, hkeysize);
 g_eli_crypto_hmac_update(&ctx, data, datasize);
 g_eli_crypto_hmac_final(&ctx, md, mdsize);
}
