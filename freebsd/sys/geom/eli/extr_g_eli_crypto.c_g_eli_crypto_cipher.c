
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int iv ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;




 int CRYPTO_AES_XTS ;



 int EINVAL ;
 int ENOMEM ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_set_key_length (int *,size_t) ;
 int EVP_CIPHER_CTX_set_padding (int *,int ) ;
 scalar_t__ EVP_CipherFinal_ex (int *,int *,int*) ;
 int EVP_CipherInit_ex (int *,int const*,int *,int const*,int *,int) ;
 scalar_t__ EVP_CipherUpdate (int *,int *,int*,int *,size_t) ;
 int * EVP_aes_128_cbc () ;
 int * EVP_aes_192_cbc () ;
 int * EVP_aes_256_cbc () ;
 int * EVP_bf_cbc () ;
 int * EVP_camellia_128_cbc () ;
 int * EVP_camellia_192_cbc () ;
 int * EVP_camellia_256_cbc () ;
 int * EVP_des_ede3_cbc () ;
 int * EVP_enc_null () ;
 int assert (int) ;
 int bzero (int *,int) ;

__attribute__((used)) static int
g_eli_crypto_cipher(u_int algo, int enc, u_char *data, size_t datasize,
    const u_char *key, size_t keysize)
{
 EVP_CIPHER_CTX *ctx;
 const EVP_CIPHER *type;
 u_char iv[keysize];
 int outsize;

 assert(algo != CRYPTO_AES_XTS);

 switch (algo) {
 case 128:
  type = EVP_enc_null();
  break;
 case 131:
  switch (keysize) {
  case 128:
   type = EVP_aes_128_cbc();
   break;
  case 192:
   type = EVP_aes_192_cbc();
   break;
  case 256:
   type = EVP_aes_256_cbc();
   break;
  default:
   return (EINVAL);
  }
  break;
 case 130:
  type = EVP_bf_cbc();
  break;

 case 129:
  switch (keysize) {
  case 128:
   type = EVP_camellia_128_cbc();
   break;
  case 192:
   type = EVP_camellia_192_cbc();
   break;
  case 256:
   type = EVP_camellia_256_cbc();
   break;
  default:
   return (EINVAL);
  }
  break;

 case 132:
  type = EVP_des_ede3_cbc();
  break;
 default:
  return (EINVAL);
 }

 ctx = EVP_CIPHER_CTX_new();
 if (ctx == ((void*)0))
  return (ENOMEM);

 EVP_CipherInit_ex(ctx, type, ((void*)0), ((void*)0), ((void*)0), enc);
 EVP_CIPHER_CTX_set_key_length(ctx, keysize / 8);
 EVP_CIPHER_CTX_set_padding(ctx, 0);
 bzero(iv, sizeof(iv));
 EVP_CipherInit_ex(ctx, ((void*)0), ((void*)0), key, iv, enc);

 if (EVP_CipherUpdate(ctx, data, &outsize, data, datasize) == 0) {
  EVP_CIPHER_CTX_free(ctx);
  return (EINVAL);
 }
 assert(outsize == (int)datasize);

 if (EVP_CipherFinal_ex(ctx, data + outsize, &outsize) == 0) {
  EVP_CIPHER_CTX_free(ctx);
  return (EINVAL);
 }
 assert(outsize == 0);

 EVP_CIPHER_CTX_free(ctx);
 return (0);
}
