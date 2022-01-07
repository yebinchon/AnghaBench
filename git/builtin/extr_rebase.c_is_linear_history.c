
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit {TYPE_1__* parents; } ;
struct TYPE_2__ {struct commit* item; scalar_t__ next; } ;


 int parse_commit (struct commit*) ;

__attribute__((used)) static int is_linear_history(struct commit *from, struct commit *to)
{
 while (to && to != from) {
  parse_commit(to);
  if (!to->parents)
   return 1;
  if (to->parents->next)
   return 0;
  to = to->parents->item;
 }
 return 1;
}
