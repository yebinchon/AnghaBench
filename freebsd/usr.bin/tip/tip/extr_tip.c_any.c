
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
any(int cc, char *p)
{
 char c = cc;
 while (p && *p)
  if (*p++ == c)
   return (1);
 return (0);
}
