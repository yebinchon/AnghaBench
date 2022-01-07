
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ nlink_t ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {scalar_t__ l_data; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ OPTION ;


 int FTS_NOSTAT ;
 scalar_t__ find_parsenum (TYPE_1__*,int ,char*,int *) ;
 int ftsoptions ;
 char* nextarg (TYPE_2__*,char***) ;
 TYPE_1__* palloc (TYPE_2__*) ;

PLAN *
c_links(OPTION *option, char ***argvp)
{
 char *nlinks;
 PLAN *new;

 nlinks = nextarg(option, argvp);
 ftsoptions &= ~FTS_NOSTAT;

 new = palloc(option);
 new->l_data = (nlink_t)find_parsenum(new, option->name, nlinks, ((void*)0));
 return new;
}
