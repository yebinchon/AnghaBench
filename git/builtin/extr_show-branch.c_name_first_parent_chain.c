
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit {TYPE_1__* parents; } ;
struct TYPE_2__ {struct commit* item; } ;


 int commit_to_name (struct commit*) ;
 int name_parent (struct commit*,struct commit*) ;

__attribute__((used)) static int name_first_parent_chain(struct commit *c)
{
 int i = 0;
 while (c) {
  struct commit *p;
  if (!commit_to_name(c))
   break;
  if (!c->parents)
   break;
  p = c->parents->item;
  if (!commit_to_name(p)) {
   name_parent(c, p);
   i++;
  }
  else
   break;
  c = p;
 }
 return i;
}
