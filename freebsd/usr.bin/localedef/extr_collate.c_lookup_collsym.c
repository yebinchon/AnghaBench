
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; } ;
typedef TYPE_1__ collsym_t ;


 TYPE_1__* RB_FIND (int ,int *,TYPE_1__*) ;
 int collsyms ;

collsym_t *
lookup_collsym(char *name)
{
 collsym_t srch;

 srch.name = name;
 return (RB_FIND(collsyms, &collsyms, &srch));
}
