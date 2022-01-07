
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {struct commit_list* next; } ;


 TYPE_1__* commit_list_insert (struct commit*,struct commit_list**) ;
 int free_commit_list (struct commit_list*) ;
 struct commit* pop_commit (struct commit_list**) ;
 struct commit_list* reduce_heads (struct commit_list*) ;

__attribute__((used)) static struct commit_list *reduce_parents(struct commit *head_commit,
       int *head_subsumed,
       struct commit_list *remoteheads)
{
 struct commit_list *parents, **remotes;
 *head_subsumed = 1;


 parents = reduce_heads(remoteheads);
 free_commit_list(remoteheads);

 remoteheads = ((void*)0);
 remotes = &remoteheads;
 while (parents) {
  struct commit *commit = pop_commit(&parents);
  if (commit == head_commit)
   *head_subsumed = 0;
  else
   remotes = &commit_list_insert(commit, remotes)->next;
 }
 return remoteheads;
}
