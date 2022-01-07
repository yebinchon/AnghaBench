
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;


 scalar_t__ CRYPTO_AES_CBC ;
 scalar_t__ CRYPTO_AES_XTS ;
 int g_eli_crypto_cipher (scalar_t__,int ,int *,size_t,int const*,size_t) ;

int
g_eli_crypto_decrypt(u_int algo, u_char *data, size_t datasize,
    const u_char *key, size_t keysize)
{


 if (algo == CRYPTO_AES_XTS)
  algo = CRYPTO_AES_CBC;

 return (g_eli_crypto_cipher(algo, 0, data, datasize, key, keysize));
}
