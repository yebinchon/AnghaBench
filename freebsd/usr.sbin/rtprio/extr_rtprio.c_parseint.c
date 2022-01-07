
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long INT_MAX ;
 scalar_t__ errno ;
 int errx (int,char*,char const*) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static int
parseint(const char *str, const char *errname)
{
 char *endp;
 long res;

 errno = 0;
 res = strtol(str, &endp, 10);
 if (errno != 0 || endp == str || *endp != '\0')
  errx(1, "%s must be a number", errname);
 if (res >= INT_MAX)
  errx(1, "Integer overflow parsing %s", errname);
 return (res);
}
