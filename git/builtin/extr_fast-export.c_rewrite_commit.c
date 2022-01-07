
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct commit {TYPE_2__* parents; TYPE_1__ object; } ;
struct TYPE_4__ {struct commit* item; scalar_t__ next; } ;


 int TREESAME ;
 int UNINTERESTING ;

__attribute__((used)) static struct commit *rewrite_commit(struct commit *p)
{
 for (;;) {
  if (p->parents && p->parents->next)
   break;
  if (p->object.flags & UNINTERESTING)
   break;
  if (!(p->object.flags & TREESAME))
   break;
  if (!p->parents)
   return ((void*)0);
  p = p->parents->item;
 }
 return p;
}
