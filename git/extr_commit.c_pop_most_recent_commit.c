
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {unsigned int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int commit_list_insert_by_date (struct commit*,struct commit_list**) ;
 int parse_commit (struct commit*) ;
 struct commit* pop_commit (struct commit_list**) ;

struct commit *pop_most_recent_commit(struct commit_list **list,
          unsigned int mark)
{
 struct commit *ret = pop_commit(list);
 struct commit_list *parents = ret->parents;

 while (parents) {
  struct commit *commit = parents->item;
  if (!parse_commit(commit) && !(commit->object.flags & mark)) {
   commit->object.flags |= mark;
   commit_list_insert_by_date(commit, list);
  }
  parents = parents->next;
 }
 return ret;
}
