
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char
lastchr(char *cp)
{

 while (cp[0] && cp[1])
  cp++;
 return (*cp);
}
