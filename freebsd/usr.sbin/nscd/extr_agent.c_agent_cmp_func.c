
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent {scalar_t__ type; int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
agent_cmp_func(const void *a1, const void *a2)
{
    struct agent const *ap1 = *((struct agent const **)a1);
 struct agent const *ap2 = *((struct agent const **)a2);
 int res;

 res = strcmp(ap1->name, ap2->name);
 if (res == 0) {
  if (ap1->type == ap2->type)
   res = 0;
  else if (ap1->type < ap2->type)
   res = -1;
  else
   res = 1;
 }

 return (res);
}
