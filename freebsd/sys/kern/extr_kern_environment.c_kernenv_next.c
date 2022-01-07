
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
kernenv_next(char *cp)
{

 if (cp != ((void*)0)) {
  while (*cp != 0)
   cp++;
  cp++;
  if (*cp == 0)
   cp = ((void*)0);
 }
 return (cp);
}
