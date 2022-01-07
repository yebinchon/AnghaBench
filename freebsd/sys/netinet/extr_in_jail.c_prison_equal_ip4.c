
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {int pr_flags; struct prison* pr_parent; } ;


 int PR_IP4_USER ;
 int PR_VNET ;
 struct prison prison0 ;

int
prison_equal_ip4(struct prison *pr1, struct prison *pr2)
{

 if (pr1 == pr2)
  return (1);





 while (pr1 != &prison0 &&



        !(pr1->pr_flags & PR_IP4_USER))
  pr1 = pr1->pr_parent;
 while (pr2 != &prison0 &&



        !(pr2->pr_flags & PR_IP4_USER))
  pr2 = pr2->pr_parent;
 return (pr1 == pr2);
}
