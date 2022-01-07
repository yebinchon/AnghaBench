
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strtod (char const*,char**) ;

__attribute__((used)) static int
str2int(const char *s, int *ok)
{
 char *endptr;
 int res = strtod(s, &endptr);
 if (endptr != s + strlen(s) )
  *ok = 0;
 else
  *ok = 1;

 return res;
}
