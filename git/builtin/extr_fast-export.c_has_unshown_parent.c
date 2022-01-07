
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int SHOWN ;
 int UNINTERESTING ;

__attribute__((used)) static int has_unshown_parent(struct commit *commit)
{
 struct commit_list *parent;

 for (parent = commit->parents; parent; parent = parent->next)
  if (!(parent->item->object.flags & SHOWN) &&
      !(parent->item->object.flags & UNINTERESTING))
   return 1;
 return 0;
}
