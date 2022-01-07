
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int len; int buf; } ;


 scalar_t__ FF_NO ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 scalar_t__ commit_tree (int ,int ,struct object_id*,struct commit_list*,struct object_id*,int *,int ) ;
 int die (int ) ;
 scalar_t__ fast_forward ;
 int finish (struct commit*,struct commit_list*,struct object_id*,int ) ;
 int free_commit_list (struct commit_list*) ;
 TYPE_1__ merge_msg ;
 int prepare_to_commit (struct commit_list*) ;
 int remove_merge_branch_state (int ) ;
 int sign_commit ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;
 int write_tree_trivial (struct object_id*) ;

__attribute__((used)) static int finish_automerge(struct commit *head,
       int head_subsumed,
       struct commit_list *common,
       struct commit_list *remoteheads,
       struct object_id *result_tree,
       const char *wt_strategy)
{
 struct commit_list *parents = ((void*)0);
 struct strbuf buf = STRBUF_INIT;
 struct object_id result_commit;

 write_tree_trivial(result_tree);
 free_commit_list(common);
 parents = remoteheads;
 if (!head_subsumed || fast_forward == FF_NO)
  commit_list_insert(head, &parents);
 prepare_to_commit(remoteheads);
 if (commit_tree(merge_msg.buf, merge_msg.len, result_tree, parents,
   &result_commit, ((void*)0), sign_commit))
  die(_("failed to write commit object"));
 strbuf_addf(&buf, "Merge made by the '%s' strategy.", wt_strategy);
 finish(head, remoteheads, &result_commit, buf.buf);
 strbuf_release(&buf);
 remove_merge_branch_state(the_repository);
 return 0;
}
