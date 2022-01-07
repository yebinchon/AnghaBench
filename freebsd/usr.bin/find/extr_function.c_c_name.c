
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* c_data; } ;
typedef TYPE_1__ PLAN ;
typedef int OPTION ;


 char* nextarg (int *,char***) ;
 TYPE_1__* palloc (int *) ;

PLAN *
c_name(OPTION *option, char ***argvp)
{
 char *pattern;
 PLAN *new;

 pattern = nextarg(option, argvp);
 new = palloc(option);
 new->c_data = pattern;
 return new;
}
