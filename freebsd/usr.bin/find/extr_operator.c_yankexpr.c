
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ execute; struct TYPE_6__* next; struct TYPE_6__** p_data; } ;
typedef TYPE_1__ PLAN ;


 int errx (int,char*) ;
 scalar_t__ f_closeparen ;
 scalar_t__ f_expr ;
 scalar_t__ f_openparen ;
 TYPE_1__* yanknode (TYPE_1__**) ;

__attribute__((used)) static PLAN *
yankexpr(PLAN **planp)
{
 PLAN *next;
 PLAN *node;
 PLAN *tail;
 PLAN *subplan;


 if ((node = yanknode(planp)) == ((void*)0))
  return (((void*)0));







 if (node->execute == f_openparen)
  for (tail = subplan = ((void*)0);;) {
   if ((next = yankexpr(planp)) == ((void*)0))
    errx(1, "(: missing closing ')'");







   if (next->execute == f_closeparen) {
    if (subplan == ((void*)0))
     errx(1, "(): empty inner expression");
    node->p_data[0] = subplan;
    node->execute = f_expr;
    break;
   } else {
    if (subplan == ((void*)0))
     tail = subplan = next;
    else {
     tail->next = next;
     tail = next;
    }
    tail->next = ((void*)0);
   }
  }
 return (node);
}
