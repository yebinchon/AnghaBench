
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_name; } ;
struct cmdargs {int argn; int argc; int * argv; } ;


 int ID0realuid () ;
 int endpwent () ;
 struct passwd* getpwuid (int ) ;
 int strcmp (char*,int ) ;
 int userok ;

int
AllowUsers(struct cmdargs const *arg)
{

  int f;
  struct passwd *pwd;

  if (userok == -1)
    userok = 0;

  pwd = getpwuid(ID0realuid());
  if (pwd != ((void*)0))
    for (f = arg->argn; f < arg->argc; f++)
      if (!strcmp("*", arg->argv[f]) || !strcmp(pwd->pw_name, arg->argv[f])) {
        userok = 1;
        break;
      }
  endpwent();

  return 0;
}
