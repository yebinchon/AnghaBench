
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ prefix (char*,char*) ;

__attribute__((used)) static int
notin(char *sh, char *lg)
{
 for (; *lg; lg++)
  if (prefix(sh, lg))
   return (0);
 return (1);
}
