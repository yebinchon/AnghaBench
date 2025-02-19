
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct alg {int name; } ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 size_t AES_CBC_MAC_HASH_LEN ;
 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int EVP_CIPHER_CTX_ctrl (int *,int ,size_t,char*) ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CTRL_CCM_GET_TAG ;
 int EVP_CTRL_CCM_SET_IVLEN ;
 int EVP_CTRL_CCM_SET_TAG ;
 int EVP_EncryptFinal_ex (int *,int *,int*) ;
 int EVP_EncryptInit_ex (int *,int const*,int *,int const*,int const*) ;
 int EVP_EncryptUpdate (int *,int *,int*,int const*,size_t) ;
 int errx (int,char*,int ,size_t,int) ;

__attribute__((used)) static void
openssl_ccm_encrypt(struct alg *alg, const EVP_CIPHER *cipher, const char *key,
    const char *iv, size_t iv_len, const char *aad, size_t aad_len,
      const char *input, char *output, size_t size, char *tag)
{
 EVP_CIPHER_CTX *ctx;
 int outl, total;

 ctx = EVP_CIPHER_CTX_new();
 if (ctx == ((void*)0))
  errx(1, "OpenSSL %s (%zu) ctx new failed: %s", alg->name,
      size, ERR_error_string(ERR_get_error(), ((void*)0)));
 if (EVP_EncryptInit_ex(ctx, cipher, ((void*)0), ((void*)0), ((void*)0)) != 1)
  errx(1, "OpenSSL %s (%zu) ctx init failed: %s", alg->name,
      size, ERR_error_string(ERR_get_error(), ((void*)0)));
 if (EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_CCM_SET_IVLEN, iv_len, ((void*)0)) != 1)
  errx(1, "OpenSSL %s (%zu) setting iv length failed: %s", alg->name,
      size, ERR_error_string(ERR_get_error(), ((void*)0)));
 if (EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_CCM_SET_TAG, AES_CBC_MAC_HASH_LEN, ((void*)0)) != 1)
  errx(1, "OpenSSL %s (%zu) setting tag length failed: %s", alg->name,
       size, ERR_error_string(ERR_get_error(), ((void*)0)));
 if (EVP_EncryptInit_ex(ctx, ((void*)0), ((void*)0), (const u_char *)key,
     (const u_char *)iv) != 1)
  errx(1, "OpenSSL %s (%zu) ctx init failed: %s", alg->name,
      size, ERR_error_string(ERR_get_error(), ((void*)0)));
 if (EVP_EncryptUpdate(ctx, ((void*)0), &outl, ((void*)0), size) != 1)
  errx(1, "OpenSSL %s (%zu) unable to set data length: %s", alg->name,
       size, ERR_error_string(ERR_get_error(), ((void*)0)));

 if (aad != ((void*)0)) {
  if (EVP_EncryptUpdate(ctx, ((void*)0), &outl, (const u_char *)aad,
      aad_len) != 1)
   errx(1, "OpenSSL %s (%zu) aad update failed: %s",
       alg->name, size,
       ERR_error_string(ERR_get_error(), ((void*)0)));
 }
 if (EVP_EncryptUpdate(ctx, (u_char *)output, &outl,
     (const u_char *)input, size) != 1)
  errx(1, "OpenSSL %s (%zu) encrypt update failed: %s", alg->name,
      size, ERR_error_string(ERR_get_error(), ((void*)0)));
 total = outl;
 if (EVP_EncryptFinal_ex(ctx, (u_char *)output + outl, &outl) != 1)
  errx(1, "OpenSSL %s (%zu) encrypt final failed: %s", alg->name,
      size, ERR_error_string(ERR_get_error(), ((void*)0)));
 total += outl;
 if (total != size)
  errx(1, "OpenSSL %s (%zu) encrypt size mismatch: %d", alg->name,
      size, total);
 if (EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_CCM_GET_TAG, AES_CBC_MAC_HASH_LEN,
     tag) != 1)
  errx(1, "OpenSSL %s (%zu) get tag failed: %s", alg->name,
      size, ERR_error_string(ERR_get_error(), ((void*)0)));
 EVP_CIPHER_CTX_free(ctx);
}
