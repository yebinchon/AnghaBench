
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int REV_SHIFT ;
 int UNINTERESTING ;
 int commit_list_insert_by_date (struct commit*,struct commit_list**) ;
 int interesting (struct commit_list*) ;
 scalar_t__ mark_seen (struct commit*,struct commit_list**) ;
 int parse_commit (struct commit*) ;
 struct commit* pop_commit (struct commit_list**) ;

__attribute__((used)) static void join_revs(struct commit_list **list_p,
        struct commit_list **seen_p,
        int num_rev, int extra)
{
 int all_mask = ((1u << (REV_SHIFT + num_rev)) - 1);
 int all_revs = all_mask & ~((1u << REV_SHIFT) - 1);

 while (*list_p) {
  struct commit_list *parents;
  int still_interesting = !!interesting(*list_p);
  struct commit *commit = pop_commit(list_p);
  int flags = commit->object.flags & all_mask;

  if (!still_interesting && extra <= 0)
   break;

  mark_seen(commit, seen_p);
  if ((flags & all_revs) == all_revs)
   flags |= UNINTERESTING;
  parents = commit->parents;

  while (parents) {
   struct commit *p = parents->item;
   int this_flag = p->object.flags;
   parents = parents->next;
   if ((this_flag & flags) == flags)
    continue;
   parse_commit(p);
   if (mark_seen(p, seen_p) && !still_interesting)
    extra--;
   p->object.flags |= flags;
   commit_list_insert_by_date(p, list_p);
  }
 }
 for (;;) {
  int changed = 0;
  struct commit_list *s;
  for (s = *seen_p; s; s = s->next) {
   struct commit *c = s->item;
   struct commit_list *parents;

   if (((c->object.flags & all_revs) != all_revs) &&
       !(c->object.flags & UNINTERESTING))
    continue;







   parents = c->parents;
   while (parents) {
    struct commit *p = parents->item;
    parents = parents->next;
    if (!(p->object.flags & UNINTERESTING)) {
     p->object.flags |= UNINTERESTING;
     changed = 1;
    }
   }
  }
  if (!changed)
   break;
 }
}
