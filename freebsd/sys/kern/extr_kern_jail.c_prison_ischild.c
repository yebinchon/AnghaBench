
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {struct prison* pr_parent; } ;



int
prison_ischild(struct prison *pr1, struct prison *pr2)
{

 for (pr2 = pr2->pr_parent; pr2 != ((void*)0); pr2 = pr2->pr_parent)
  if (pr1 == pr2)
   return (1);
 return (0);
}
