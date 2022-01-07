
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct possible_tag {int flag_within; int depth; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int SEEN ;
 int commit_list_insert_by_date (struct commit*,struct commit_list**) ;
 int parse_commit (struct commit*) ;
 struct commit* pop_commit (struct commit_list**) ;

__attribute__((used)) static unsigned long finish_depth_computation(
 struct commit_list **list,
 struct possible_tag *best)
{
 unsigned long seen_commits = 0;
 while (*list) {
  struct commit *c = pop_commit(list);
  struct commit_list *parents = c->parents;
  seen_commits++;
  if (c->object.flags & best->flag_within) {
   struct commit_list *a = *list;
   while (a) {
    struct commit *i = a->item;
    if (!(i->object.flags & best->flag_within))
     break;
    a = a->next;
   }
   if (!a)
    break;
  } else
   best->depth++;
  while (parents) {
   struct commit *p = parents->item;
   parse_commit(p);
   if (!(p->object.flags & SEEN))
    commit_list_insert_by_date(p, list);
   p->object.flags |= c->object.flags;
   parents = parents->next;
  }
 }
 return seen_commits;
}
