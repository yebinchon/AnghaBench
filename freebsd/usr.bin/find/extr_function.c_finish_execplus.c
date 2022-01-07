
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* e_next; int (* execute ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ PLAN ;


 TYPE_1__* lastexecplus ;
 int stub1 (TYPE_1__*,int *) ;

void
finish_execplus(void)
{
 PLAN *p;

 p = lastexecplus;
 while (p != ((void*)0)) {
  (p->execute)(p, ((void*)0));
  p = p->e_next;
 }
}
