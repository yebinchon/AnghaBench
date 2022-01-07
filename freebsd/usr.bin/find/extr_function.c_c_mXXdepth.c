
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int name; } ;
typedef int PLAN ;
typedef TYPE_1__ OPTION ;


 int F_MAXDEPTH ;
 int errx (int,char*,int ,char*) ;
 void* find_parsenum (int *,int ,char*,int *) ;
 void* maxdepth ;
 void* mindepth ;
 char* nextarg (TYPE_1__*,char***) ;
 int * palloc (TYPE_1__*) ;

PLAN *
c_mXXdepth(OPTION *option, char ***argvp)
{
 char *dstr;
 PLAN *new;

 dstr = nextarg(option, argvp);
 if (dstr[0] == '-')

  errx(1, "%s: %s: value must be positive", option->name, dstr);

 new = palloc(option);
 if (option->flags & F_MAXDEPTH)
  maxdepth = find_parsenum(new, option->name, dstr, ((void*)0));
 else
  mindepth = find_parsenum(new, option->name, dstr, ((void*)0));
 return new;
}
