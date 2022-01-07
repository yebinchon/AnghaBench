
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int i_data; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ OPTION ;


 int FTS_NOSTAT ;
 int find_parsenum (TYPE_1__*,int ,char*,int *) ;
 int ftsoptions ;
 char* nextarg (TYPE_2__*,char***) ;
 TYPE_1__* palloc (TYPE_2__*) ;

PLAN *
c_inum(OPTION *option, char ***argvp)
{
 char *inum_str;
 PLAN *new;

 inum_str = nextarg(option, argvp);
 ftsoptions &= ~FTS_NOSTAT;

 new = palloc(option);
 new->i_data = find_parsenum(new, option->name, inum_str, ((void*)0));
 return new;
}
