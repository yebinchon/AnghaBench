
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int EX_USAGE ;
 int errx (int ,char*,char*,char const*) ;
 int strtounum (char*,int ,int ,char const**) ;

uintmax_t
pw_checkid(char *nptr, uintmax_t maxval)
{
 const char *errstr = ((void*)0);
 uintmax_t id;

 id = strtounum(nptr, 0, maxval, &errstr);
 if (errstr)
  errx(EX_USAGE, "Bad id '%s': %s", nptr, errstr);
 return (id);
}
