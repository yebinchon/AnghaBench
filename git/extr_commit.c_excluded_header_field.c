
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int excluded_header_field(const char *field, size_t len, const char **exclude)
{
 if (!exclude)
  return 0;

 while (*exclude) {
  size_t xlen = strlen(*exclude);
  if (len == xlen && !memcmp(field, *exclude, xlen))
   return 1;
  exclude++;
 }
 return 0;
}
