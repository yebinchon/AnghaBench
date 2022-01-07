
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;


 int m4errx (int,char*,char const*,char*) ;
 size_t regerror (int,int *,char*,size_t) ;
 char* xalloc (size_t,char*,unsigned long) ;

__attribute__((used)) static void
exit_regerror(int er, regex_t *re, const char *source)
{
 size_t errlen;
 char *errbuf;

 errlen = regerror(er, re, ((void*)0), 0);
 errbuf = xalloc(errlen,
     "malloc in regerror: %lu", (unsigned long)errlen);
 regerror(er, re, errbuf, errlen);
 m4errx(1, "regular expression error in %s: %s.", source, errbuf);
}
