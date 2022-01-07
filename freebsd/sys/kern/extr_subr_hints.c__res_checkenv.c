
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static bool
_res_checkenv(char *envp)
{
 char *cp;

 cp = envp;
 while (cp) {
  if (strncmp(cp, "hint.", 5) == 0)
   return (1);
  while (*cp != '\0')
   cp++;
  cp++;
  if (*cp == '\0')
   break;
 }
 return (0);
}
