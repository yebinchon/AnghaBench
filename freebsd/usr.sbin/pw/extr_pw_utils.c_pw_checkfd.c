
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int INT_MAX ;
 int errx (int ,char*,char*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strtonum (char*,int ,int ,char const**) ;

int
pw_checkfd(char *nptr)
{
 const char *errstr;
 int fd = -1;

 if (strcmp(nptr, "-") == 0)
  return '-';
 fd = strtonum(nptr, 0, INT_MAX, &errstr);
 if (errstr != ((void*)0))
  errx(EX_USAGE, "Bad file descriptor '%s': %s",
      nptr, errstr);
 return (fd);
}
