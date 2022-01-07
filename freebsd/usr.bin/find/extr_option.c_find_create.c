
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * (* create ) (TYPE_1__*,char***) ;} ;
typedef int PLAN ;
typedef TYPE_1__ OPTION ;


 int errx (int,char*,char*) ;
 TYPE_1__* lookup_option (char*) ;
 int * stub1 (TYPE_1__*,char***) ;

PLAN *
find_create(char ***argvp)
{
 OPTION *p;
 PLAN *new;
 char **argv;

 argv = *argvp;

 if ((p = lookup_option(*argv)) == ((void*)0))
  errx(1, "%s: unknown primary or operator", *argv);
 ++argv;

 new = (p->create)(p, &argv);
 *argvp = argv;
 return (new);
}
