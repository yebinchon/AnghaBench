
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hmkey ;


 int G_ELI_DATAIVKEYLEN ;
 int G_ELI_USERKEYLEN ;
 int SHA512_MDLEN ;
 int bcmp (unsigned char const*,unsigned char*,int) ;
 int explicit_bzero (unsigned char*,int) ;
 int g_eli_crypto_hmac (unsigned char const*,int,...) ;

__attribute__((used)) static int
g_eli_mkey_verify(const unsigned char *mkey, const unsigned char *key)
{
 const unsigned char *odhmac;
 unsigned char chmac[SHA512_MDLEN];
 unsigned char hmkey[SHA512_MDLEN];




 g_eli_crypto_hmac(key, G_ELI_USERKEYLEN, "\x00", 1, hmkey, 0);

 odhmac = mkey + G_ELI_DATAIVKEYLEN;


 g_eli_crypto_hmac(hmkey, sizeof(hmkey), mkey, G_ELI_DATAIVKEYLEN,
     chmac, 0);

 explicit_bzero(hmkey, sizeof(hmkey));





 return (!bcmp(odhmac, chmac, SHA512_MDLEN));
}
