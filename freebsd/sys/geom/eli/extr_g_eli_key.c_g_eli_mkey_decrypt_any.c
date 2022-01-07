
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_eli_metadata {int dummy; } ;


 int G_ELI_MAXMKEYS ;
 int g_eli_mkey_decrypt (struct g_eli_metadata const*,unsigned char const*,unsigned char*,int) ;

int
g_eli_mkey_decrypt_any(const struct g_eli_metadata *md,
    const unsigned char *key, unsigned char *mkey, unsigned *nkeyp)
{
 int error, nkey;

 if (nkeyp != ((void*)0))
  *nkeyp = -1;

 error = -1;
 for (nkey = 0; nkey < G_ELI_MAXMKEYS; nkey++) {
  error = g_eli_mkey_decrypt(md, key, mkey, nkey);
  if (error == 0) {
   if (nkeyp != ((void*)0))
    *nkeyp = nkey;
   break;
  } else if (error > 0) {
   break;
  }
 }

 return (error);
}
