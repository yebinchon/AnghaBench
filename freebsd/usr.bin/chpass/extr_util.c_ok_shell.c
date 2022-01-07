
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int endusershell () ;
 char* getusershell () ;
 int setusershell () ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;

int
ok_shell(char *name)
{
 char *p, *sh;

 setusershell();
 while ((sh = getusershell())) {
  if (!strcmp(name, sh)) {
   endusershell();
   return (1);
  }

  if ((p = strrchr(sh, '/')) && strcmp(name, p + 1) == 0) {
   endusershell();
   return (1);
  }
 }
 endusershell();
 return (0);
}
