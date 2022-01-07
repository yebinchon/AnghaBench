
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ execute; struct TYPE_6__* next; } ;
typedef TYPE_1__ PLAN ;


 int errx (int,char*) ;
 scalar_t__ f_closeparen ;
 TYPE_1__* yankexpr (TYPE_1__**) ;

PLAN *
paren_squish(PLAN *plan)
{
 PLAN *expr;
 PLAN *tail;
 PLAN *result;

 result = tail = ((void*)0);





 while ((expr = yankexpr(&plan)) != ((void*)0)) {




  if (expr->execute == f_closeparen)
   errx(1, "): no beginning '('");


  if (result == ((void*)0))
   tail = result = expr;
  else {
   tail->next = expr;
   tail = expr;
  }
  tail->next = ((void*)0);
 }
 return (result);
}
