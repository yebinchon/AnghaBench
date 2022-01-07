
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {unsigned int flags; } ;
struct commit {struct commit_list* parents; TYPE_1__ object; } ;


 int commit_list_insert (struct commit*,struct commit_list**) ;

__attribute__((used)) static void clear_commit_marks_1(struct commit_list **plist,
     struct commit *commit, unsigned int mark)
{
 while (commit) {
  struct commit_list *parents;

  if (!(mark & commit->object.flags))
   return;

  commit->object.flags &= ~mark;

  parents = commit->parents;
  if (!parents)
   return;

  while ((parents = parents->next))
   commit_list_insert(parents->item, plist);

  commit = commit->parents->item;
 }
}
