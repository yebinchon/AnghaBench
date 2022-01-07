
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char const*,char const*) ;

__attribute__((used)) static char *
concat(const char *str1, const char *str2)
{
 char *newstr;

 if (asprintf(&newstr, "%s%s", str1, str2) == -1)
  return ((void*)0);
 return newstr;
}
