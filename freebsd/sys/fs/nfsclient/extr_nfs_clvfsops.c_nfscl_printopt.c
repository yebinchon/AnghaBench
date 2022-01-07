
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmount {int dummy; } ;


 int printf (char*) ;
 int snprintf (char*,size_t,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static __inline void nfscl_printopt(struct nfsmount *nmp, int testval,
    char *opt, char **buf, size_t *blen)
{
 int len;

 if (testval != 0 && *blen > strlen(opt)) {
  len = snprintf(*buf, *blen, "%s", opt);
  if (len != strlen(opt))
   printf("EEK!!\n");
  *buf += len;
  *blen -= len;
 }
}
