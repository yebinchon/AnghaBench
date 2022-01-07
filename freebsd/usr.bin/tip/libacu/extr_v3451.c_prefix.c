
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
prefix(char *s1, char *s2)
{
 char c;

 while ((c = *s1++) == *s2++)
  if (c == '\0')
   return (1);
 return (c == '\0');
}
