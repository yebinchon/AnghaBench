
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hmkey ;


 int G_ELI_DATAIVKEYLEN ;
 int G_ELI_USERKEYLEN ;
 int SHA512_MDLEN ;
 int explicit_bzero (unsigned char*,int) ;
 int g_eli_crypto_hmac (unsigned char const*,int,...) ;

void
g_eli_mkey_hmac(unsigned char *mkey, const unsigned char *key)
{
 unsigned char hmkey[SHA512_MDLEN];
 unsigned char *odhmac;




 g_eli_crypto_hmac(key, G_ELI_USERKEYLEN, "\x00", 1, hmkey, 0);

 odhmac = mkey + G_ELI_DATAIVKEYLEN;

 g_eli_crypto_hmac(hmkey, sizeof(hmkey), mkey, G_ELI_DATAIVKEYLEN,
     odhmac, 0);

 explicit_bzero(hmkey, sizeof(hmkey));
}
