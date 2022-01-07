
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static inline int strtol_i(char const *s, int base, int *result)
{
 long ul;
 char *p;

 errno = 0;
 ul = strtol(s, &p, base);
 if (errno || *p || p == s || (int) ul != ul)
  return -1;
 *result = ul;
 return 0;
}
