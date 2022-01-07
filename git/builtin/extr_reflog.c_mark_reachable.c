
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ timestamp_t ;
struct expire_reflog_policy_cb {scalar_t__ mark_limit; struct commit_list* mark_list; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {int flags; } ;
struct commit {scalar_t__ date; TYPE_1__ object; struct commit_list* parents; } ;


 int REACHABLE ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 scalar_t__ parse_commit (struct commit*) ;
 struct commit* pop_commit (struct commit_list**) ;

__attribute__((used)) static void mark_reachable(struct expire_reflog_policy_cb *cb)
{
 struct commit_list *pending;
 timestamp_t expire_limit = cb->mark_limit;
 struct commit_list *leftover = ((void*)0);

 for (pending = cb->mark_list; pending; pending = pending->next)
  pending->item->object.flags &= ~REACHABLE;

 pending = cb->mark_list;
 while (pending) {
  struct commit_list *parent;
  struct commit *commit = pop_commit(&pending);
  if (commit->object.flags & REACHABLE)
   continue;
  if (parse_commit(commit))
   continue;
  commit->object.flags |= REACHABLE;
  if (commit->date < expire_limit) {
   commit_list_insert(commit, &leftover);
   continue;
  }
  commit->object.flags |= REACHABLE;
  parent = commit->parents;
  while (parent) {
   commit = parent->item;
   parent = parent->next;
   if (commit->object.flags & REACHABLE)
    continue;
   commit_list_insert(commit, &pending);
  }
 }
 cb->mark_list = leftover;
}
