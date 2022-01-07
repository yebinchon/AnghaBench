
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int enckey ;


 int G_ELI_MKEYLEN ;
 int G_ELI_USERKEYLEN ;
 int SHA512_MDLEN ;
 int explicit_bzero (unsigned char*,int) ;
 int g_eli_crypto_encrypt (unsigned int,unsigned char*,int ,unsigned char*,unsigned int) ;
 int g_eli_crypto_hmac (unsigned char const*,int ,char*,int,unsigned char*,int ) ;
 int g_eli_mkey_hmac (unsigned char*,unsigned char const*) ;

int
g_eli_mkey_encrypt(unsigned algo, const unsigned char *key, unsigned keylen,
    unsigned char *mkey)
{
 unsigned char enckey[SHA512_MDLEN];
 int error;





 g_eli_mkey_hmac(mkey, key);



 g_eli_crypto_hmac(key, G_ELI_USERKEYLEN, "\x01", 1, enckey, 0);




 error = g_eli_crypto_encrypt(algo, mkey, G_ELI_MKEYLEN, enckey, keylen);

 explicit_bzero(enckey, sizeof(enckey));

 return (error);
}
