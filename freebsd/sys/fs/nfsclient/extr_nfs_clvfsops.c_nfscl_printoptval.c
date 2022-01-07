
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmount {int dummy; } ;


 int snprintf (char*,size_t,char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static __inline void nfscl_printoptval(struct nfsmount *nmp, int optval,
    char *opt, char **buf, size_t *blen)
{
 int len;

 if (*blen > strlen(opt) + 1) {

  len = snprintf(*buf, *blen, "%s=%d", opt, optval);
  if (len < *blen) {
   *buf += len;
   *blen -= len;
  }
 }
}
