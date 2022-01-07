
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int EINVAL ;
 size_t strlen (char const*) ;
 int strtoul (char const*,char**,int) ;

__attribute__((used)) static int
str2int64(const char *str, int64_t *value)
{
 char *end;

 if (str == ((void*)0))
  return (EINVAL);

 *value = strtoul(str, &end, 10);
 if ((size_t)(end - str) != strlen(str))
  return (EINVAL);

 return (0);
}
