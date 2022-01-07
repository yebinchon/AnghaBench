
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {char* pr_name; struct prison* pr_parent; } ;


 struct prison prison0 ;
 scalar_t__ prison_ischild (struct prison*,struct prison*) ;
 char* strchr (char*,char) ;

char *
prison_name(struct prison *pr1, struct prison *pr2)
{
 char *name;


 if (pr1 == pr2)
  return "0";
 name = pr2->pr_name;
 if (prison_ischild(pr1, pr2)) {





  for (; pr1 != &prison0; pr1 = pr1->pr_parent)
   name = strchr(name, '.') + 1;
 }
 return (name);
}
