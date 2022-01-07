
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int endusershell () ;
 char* getusershell () ;
 int setusershell () ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
chshell(const char *sh)
{
 int r;
 char *cp;

 r = 0;
 setusershell();
 while ((cp = getusershell()) != ((void*)0) && !r)
     r = (strcmp(cp, sh) == 0);
 endusershell();
 return r;
}
