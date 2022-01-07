
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpmkey ;
struct g_eli_metadata {unsigned char* md_mkeys; int md_keys; int md_keylen; int md_ealgo; } ;
typedef int enckey ;


 int G_ELI_DATAIVKEYLEN ;
 int G_ELI_MKEYLEN ;
 int G_ELI_USERKEYLEN ;
 int SHA512_MDLEN ;
 int bcopy (unsigned char const*,unsigned char*,int) ;
 int explicit_bzero (unsigned char*,int) ;
 int g_eli_crypto_decrypt (int ,unsigned char*,int,unsigned char*,int ) ;
 int g_eli_crypto_hmac (unsigned char const*,int ,char*,int,unsigned char*,int ) ;
 scalar_t__ g_eli_mkey_verify (unsigned char*,unsigned char const*) ;

int
g_eli_mkey_decrypt(const struct g_eli_metadata *md, const unsigned char *key,
    unsigned char *mkey, unsigned nkey)
{
 unsigned char tmpmkey[G_ELI_MKEYLEN];
 unsigned char enckey[SHA512_MDLEN];
 const unsigned char *mmkey;
 int bit, error;

 if (nkey > G_ELI_MKEYLEN)
  return (-1);




 g_eli_crypto_hmac(key, G_ELI_USERKEYLEN, "\x01", 1, enckey, 0);

 mmkey = md->md_mkeys + G_ELI_MKEYLEN * nkey;
 bit = (1 << nkey);
 if (!(md->md_keys & bit))
  return (-1);
 bcopy(mmkey, tmpmkey, G_ELI_MKEYLEN);
 error = g_eli_crypto_decrypt(md->md_ealgo, tmpmkey,
     G_ELI_MKEYLEN, enckey, md->md_keylen);
 if (error != 0) {
  explicit_bzero(tmpmkey, sizeof(tmpmkey));
  explicit_bzero(enckey, sizeof(enckey));
  return (error);
 }
 if (g_eli_mkey_verify(tmpmkey, key)) {
  bcopy(tmpmkey, mkey, G_ELI_DATAIVKEYLEN);
  explicit_bzero(tmpmkey, sizeof(tmpmkey));
  explicit_bzero(enckey, sizeof(enckey));
  return (0);
 }
 explicit_bzero(enckey, sizeof(enckey));
 explicit_bzero(tmpmkey, sizeof(tmpmkey));

 return (-1);
}
