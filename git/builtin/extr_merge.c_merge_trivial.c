
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct commit_list {struct commit* item; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int len; int buf; } ;


 int REFRESH_QUIET ;
 int SKIP_IF_UNCHANGED ;
 char* _ (char*) ;
 struct commit_list** commit_list_append (struct commit*,struct commit_list**) ;
 scalar_t__ commit_tree (int ,int ,struct object_id*,struct commit_list*,struct object_id*,int *,int ) ;
 int die (char*) ;
 int error (char*) ;
 int finish (struct commit*,struct commit_list*,struct object_id*,char*) ;
 TYPE_1__ merge_msg ;
 int prepare_to_commit (struct commit_list*) ;
 int printf (char*) ;
 scalar_t__ refresh_and_write_cache (int ,int ,int ) ;
 int remove_merge_branch_state (int ) ;
 int sign_commit ;
 int the_repository ;
 int write_tree_trivial (struct object_id*) ;

__attribute__((used)) static int merge_trivial(struct commit *head, struct commit_list *remoteheads)
{
 struct object_id result_tree, result_commit;
 struct commit_list *parents, **pptr = &parents;

 if (refresh_and_write_cache(REFRESH_QUIET, SKIP_IF_UNCHANGED, 0) < 0)
  return error(_("Unable to write index."));

 write_tree_trivial(&result_tree);
 printf(_("Wonderful.\n"));
 pptr = commit_list_append(head, pptr);
 pptr = commit_list_append(remoteheads->item, pptr);
 prepare_to_commit(remoteheads);
 if (commit_tree(merge_msg.buf, merge_msg.len, &result_tree, parents,
   &result_commit, ((void*)0), sign_commit))
  die(_("failed to write commit object"));
 finish(head, remoteheads, &result_commit, "In-index merge");
 remove_merge_branch_state(the_repository);
 return 0;
}
