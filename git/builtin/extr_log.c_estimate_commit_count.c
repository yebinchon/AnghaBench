
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {unsigned int flags; } ;
struct commit {TYPE_1__ object; } ;


 unsigned int TREESAME ;
 unsigned int UNINTERESTING ;

__attribute__((used)) static int estimate_commit_count(struct commit_list *list)
{
 int n = 0;

 while (list) {
  struct commit *commit = list->item;
  unsigned int flags = commit->object.flags;
  list = list->next;
  if (!(flags & (TREESAME | UNINTERESTING)))
   n++;
 }
 return n;
}
