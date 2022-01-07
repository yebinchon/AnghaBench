
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; int execute; } ;
struct TYPE_6__ {int * next; int flags; int execute; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ OPTION ;


 int err (int,int *) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static PLAN *
palloc(OPTION *option)
{
 PLAN *new;

 if ((new = malloc(sizeof(PLAN))) == ((void*)0))
  err(1, ((void*)0));
 new->execute = option->execute;
 new->flags = option->flags;
 new->next = ((void*)0);
 return new;
}
