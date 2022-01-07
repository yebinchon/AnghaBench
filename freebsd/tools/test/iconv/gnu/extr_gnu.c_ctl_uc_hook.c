
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iconv_hooks {int * wc_hook; int uc_hook; } ;
typedef scalar_t__ iconv_t ;


 int ICONV_SET_HOOKS ;
 size_t iconv (scalar_t__,char const**,size_t*,char**,size_t*) ;
 int iconv_close (scalar_t__) ;
 scalar_t__ iconv_open (char*,char*) ;
 scalar_t__ iconvctl (scalar_t__,int ,void*) ;
 char* malloc (int) ;
 scalar_t__ uc_hook ;
 int unicode_hook ;

__attribute__((used)) static int
ctl_uc_hook(void)
{
 struct iconv_hooks hooks;
 iconv_t cd;
 size_t inbytesleft = 15, outbytesleft = 40;
 const char **inptr;
 const char *s = "Hello World!";
 char **outptr;
 char *outbuf;

 inptr = &s;
 hooks.uc_hook = unicode_hook;
 hooks.wc_hook = ((void*)0);

 outbuf = malloc(40);
 outptr = &outbuf;

 cd = iconv_open("UTF-8", "ASCII");
 if (cd == (iconv_t)-1)
  return (-1);
 if (iconvctl(cd, ICONV_SET_HOOKS, (void *)&hooks) != 0)
  return (-1);
 if (iconv(cd, inptr, &inbytesleft, outptr, &outbytesleft) == (size_t)-1)
  return (-1);
 if (iconv_close(cd) == -1)
  return (-1);
 return (uc_hook ? 0 : 1);
}
