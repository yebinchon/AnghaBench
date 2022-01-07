
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* execute ) (TYPE_1__*,int *) ;struct TYPE_5__* next; struct TYPE_5__** p_data; } ;
typedef TYPE_1__ PLAN ;
typedef int FTSENT ;


 int stub1 (TYPE_1__*,int *) ;
 int stub2 (TYPE_1__*,int *) ;

int
f_or(PLAN *plan, FTSENT *entry)
{
 PLAN *p;
 int state = 0;

 for (p = plan->p_data[0];
     p && (state = (p->execute)(p, entry)); p = p->next);

 if (state)
  return 1;

 for (p = plan->p_data[1];
     p && (state = (p->execute)(p, entry)); p = p->next);
 return state;
}
