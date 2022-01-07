
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct alg {int name; } ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_set_padding (int *,int ) ;
 int EVP_CipherFinal_ex (int *,int *,int*) ;
 int EVP_CipherInit_ex (int *,int const*,int *,int const*,int const*,int) ;
 int EVP_CipherUpdate (int *,int *,int*,int const*,size_t) ;
 int errx (int,char*,int ,size_t,int) ;

__attribute__((used)) static void
openssl_cipher(struct alg *alg, const EVP_CIPHER *cipher, const char *key,
    const char *iv, const char *input, char *output, size_t size, int enc)
{
 EVP_CIPHER_CTX *ctx;
 int outl, total;

 ctx = EVP_CIPHER_CTX_new();
 if (ctx == ((void*)0))
  errx(1, "OpenSSL %s (%zu) ctx new failed: %s", alg->name,
      size, ERR_error_string(ERR_get_error(), ((void*)0)));
 if (EVP_CipherInit_ex(ctx, cipher, ((void*)0), (const u_char *)key,
     (const u_char *)iv, enc) != 1)
  errx(1, "OpenSSL %s (%zu) ctx init failed: %s", alg->name,
      size, ERR_error_string(ERR_get_error(), ((void*)0)));
 EVP_CIPHER_CTX_set_padding(ctx, 0);
 if (EVP_CipherUpdate(ctx, (u_char *)output, &outl,
     (const u_char *)input, size) != 1)
  errx(1, "OpenSSL %s (%zu) cipher update failed: %s", alg->name,
      size, ERR_error_string(ERR_get_error(), ((void*)0)));
 total = outl;
 if (EVP_CipherFinal_ex(ctx, (u_char *)output + outl, &outl) != 1)
  errx(1, "OpenSSL %s (%zu) cipher final failed: %s", alg->name,
      size, ERR_error_string(ERR_get_error(), ((void*)0)));
 total += outl;
 if (total != size)
  errx(1, "OpenSSL %s (%zu) cipher size mismatch: %d", alg->name,
      size, total);
 EVP_CIPHER_CTX_free(ctx);
}
