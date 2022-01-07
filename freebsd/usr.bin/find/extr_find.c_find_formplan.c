
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {TYPE_1__* (* create ) (TYPE_2__*,char***) ;} ;
struct TYPE_20__ {struct TYPE_20__* next; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ OPTION ;


 TYPE_1__* find_create (char***) ;
 int isoutput ;
 TYPE_2__* lookup_option (char*) ;
 TYPE_1__* not_squish (TYPE_1__*) ;
 TYPE_1__* or_squish (TYPE_1__*) ;
 TYPE_1__* paren_squish (TYPE_1__*) ;
 TYPE_1__* stub1 (TYPE_2__*,char***) ;
 TYPE_1__* stub2 (TYPE_2__*,char***) ;
 TYPE_1__* stub3 (TYPE_2__*,char***) ;
 TYPE_1__* stub4 (TYPE_2__*,char***) ;

PLAN *
find_formplan(char *argv[])
{
 PLAN *plan, *tail, *new;
 for (plan = tail = ((void*)0); *argv;) {
  if (!(new = find_create(&argv)))
   continue;
  if (plan == ((void*)0))
   tail = plan = new;
  else {
   tail->next = new;
   tail = new;
  }
 }






 if (!isoutput) {
  OPTION *p;
  char **argv1 = 0;

  if (plan == ((void*)0)) {
   p = lookup_option("-print");
   new = (p->create)(p, &argv1);
   tail = plan = new;
  } else {
   p = lookup_option("(");
   new = (p->create)(p, &argv1);
   new->next = plan;
   plan = new;
   p = lookup_option(")");
   new = (p->create)(p, &argv1);
   tail->next = new;
   tail = new;
   p = lookup_option("-print");
   new = (p->create)(p, &argv1);
   tail->next = new;
   tail = new;
  }
 }
 plan = paren_squish(plan);
 plan = not_squish(plan);
 plan = or_squish(plan);
 return (plan);
}
