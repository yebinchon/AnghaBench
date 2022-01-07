
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ chdir (char*) ;
 char* expand (char*) ;
 char* homedir ;
 int warn (char*,char*) ;

int
schdir(void *v)
{
 char **arglist = v;
 char *cp;

 if (*arglist == ((void*)0)) {
  if (homedir == ((void*)0))
   return (1);
  cp = homedir;
 } else
  if ((cp = expand(*arglist)) == ((void*)0))
   return (1);
 if (chdir(cp) < 0) {
  warn("%s", cp);
  return (1);
 }
 return (0);
}
