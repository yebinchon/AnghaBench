
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
inlcmp(const char *s1, const char *s2)
{
 int c1, c2;

 while (*s1 == *s2++)
  if (*s1++ == '\0')
   return (0);
 c1 = (unsigned char)*s1;
 c2 = (unsigned char)*(s2 - 1);

 if (c1 == '\n')
  c1 = '\0';
 if (c2 == '\n')
  c2 = '\0';
 return (c1 - c2);
}
