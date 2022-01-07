
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
not_squish(PLAN *plan)
{
 PLAN *next;
 PLAN *node;
 PLAN *tail;
 PLAN *result;

 tail = result = ((void*)0);

 while ((next = yanknode(&plan))) {




  if (next->execute == f_expr)
   next->p_data[0] = not_squish(next->p_data[0]);






  if (next->execute == f_not) {
   int notlevel = 1;

   node = yanknode(&plan);
   while (node != ((void*)0) && node->execute == f_not) {
    ++notlevel;
    node = yanknode(&plan);
   }
   if (node == ((void*)0))
    errx(1, "!: no following expression");
   if (node->execute == f_or)
    errx(1, "!: nothing between ! and -o");




   if (node->execute == f_expr)
    node->p_data[0] = not_squish(node->p_data[0]);
   if (notlevel % 2 != 1)
    next = node;
   else
    next->p_data[0] = node;
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
