
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HAL_CIPHER_AES_CCM ;
 int HAL_CIPHER_AES_OCB ;
 int HAL_CIPHER_CKIP ;
 int HAL_CIPHER_CLR ;
 int HAL_CIPHER_TKIP ;
 int HAL_CIPHER_WEP ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* progname ;
 int stderr ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int
getcipher(const char *name)
{


 if ((strcasecmp(name,"wep") == 0))
  return HAL_CIPHER_WEP;
 if ((strcasecmp(name,"tkip") == 0))
  return HAL_CIPHER_TKIP;
 if ((strcasecmp(name,"aes-ocb") == 0) || (strcasecmp(name,"ocb") == 0))
  return HAL_CIPHER_AES_OCB;
 if ((strcasecmp(name,"aes-ccm") == 0) || (strcasecmp(name,"ccm") == 0) ||
     (strcasecmp(name,"aes") == 0))
  return HAL_CIPHER_AES_CCM;
 if ((strcasecmp(name,"ckip") == 0))
  return HAL_CIPHER_CKIP;
 if ((strcasecmp(name,"none") == 0) || (strcasecmp(name,"clr") == 0))
  return HAL_CIPHER_CLR;

 fprintf(stderr, "%s: unknown cipher %s\n", progname, name);
 exit(-1);

}
