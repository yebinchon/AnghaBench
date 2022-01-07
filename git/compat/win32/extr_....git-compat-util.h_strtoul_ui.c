
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 scalar_t__ strchr (char const*,char) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static inline int strtoul_ui(char const *s, int base, unsigned int *result)
{
 unsigned long ul;
 char *p;

 errno = 0;

 if (strchr(s, '-'))
  return -1;
 ul = strtoul(s, &p, base);
 if (errno || *p || p == s || (unsigned int) ul != ul)
  return -1;
 *result = ul;
 return 0;
}
