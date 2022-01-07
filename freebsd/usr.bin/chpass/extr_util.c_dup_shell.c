
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int endusershell () ;
 char* getusershell () ;
 int setusershell () ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;

char *
dup_shell(char *name)
{
 char *p, *sh, *ret;

 setusershell();
 while ((sh = getusershell())) {
  if (!strcmp(name, sh)) {
   endusershell();
   return (strdup(name));
  }

  if ((p = strrchr(sh, '/')) && strcmp(name, p + 1) == 0) {
   ret = strdup(sh);
   endusershell();
   return (ret);
  }
 }
 endusershell();
 return (((void*)0));
}
