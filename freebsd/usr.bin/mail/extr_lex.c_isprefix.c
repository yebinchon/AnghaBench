
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
isprefix(const char *as1, const char *as2)
{
 const char *s1, *s2;

 s1 = as1;
 s2 = as2;
 while (*s1++ == *s2)
  if (*s2++ == '\0')
   return (1);
 return (*--s1 == '\0');
}
