
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ execute; struct TYPE_6__* next; struct TYPE_6__** p_data; } ;
typedef TYPE_1__ PLAN ;


 int errx (int,char*) ;
 scalar_t__ f_expr ;
 scalar_t__ f_not ;
 scalar_t__ f_or ;
 TYPE_1__* yanknode (TYPE_1__**) ;

PLAN *
or_squish(PLAN *plan)
{
 PLAN *next;
 PLAN *tail;
 PLAN *result;

 tail = result = next = ((void*)0);

 while ((next = yanknode(&plan)) != ((void*)0)) {




  if (next->execute == f_expr)
   next->p_data[0] = or_squish(next->p_data[0]);


  if (next->execute == f_not)
   next->p_data[0] = or_squish(next->p_data[0]);






  if (next->execute == f_or) {
   if (result == ((void*)0))
    errx(1, "-o: no expression before -o");
   next->p_data[0] = result;
   next->p_data[1] = or_squish(plan);
   if (next->p_data[1] == ((void*)0))
    errx(1, "-o: no expression after -o");
   return (next);
  }


  if (result == ((void*)0))
   tail = result = next;
  else {
   tail->next = next;
   tail = next;
  }
  tail->next = ((void*)0);
 }
 return (result);
}
