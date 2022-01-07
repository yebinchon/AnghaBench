
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* execute ) (TYPE_1__*,int *) ;struct TYPE_4__* next; struct TYPE_4__** p_data; } ;
typedef TYPE_1__ PLAN ;
typedef int FTSENT ;


 int stub1 (TYPE_1__*,int *) ;

int
f_not(PLAN *plan, FTSENT *entry)
{
 PLAN *p;
 int state = 0;

 for (p = plan->p_data[0];
     p && (state = (p->execute)(p, entry)); p = p->next);
 return !state;
}
