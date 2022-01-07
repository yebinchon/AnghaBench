
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int dummy; } ;
struct strbuf {int buf; } ;
struct object_id {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int default_refs ;
 int for_each_rawref (int (*) (int ,struct object_id*,int ,int *),int *) ;
 int fprintf_ln (int ,int ) ;
 int free_worktrees (struct worktree**) ;
 int fsck_handle_ref (int ,struct object_id*,int ,int *) ;
 int fsck_handle_reflog ;
 int fsck_head_link (int ,char const**,struct object_id*) ;
 int get_worktree_ref_store (struct worktree*) ;
 struct worktree** get_worktrees (int ) ;
 scalar_t__ include_reflogs ;
 int is_null_oid (struct object_id*) ;
 int refs_for_each_reflog (int ,int ,struct worktree*) ;
 scalar_t__ show_unreachable ;
 int stderr ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_worktree_ref (struct worktree*,struct strbuf*,char*) ;

__attribute__((used)) static void get_default_heads(void)
{
 struct worktree **worktrees, **p;
 const char *head_points_at;
 struct object_id head_oid;

 for_each_rawref(fsck_handle_ref, ((void*)0));

 worktrees = get_worktrees(0);
 for (p = worktrees; *p; p++) {
  struct worktree *wt = *p;
  struct strbuf ref = STRBUF_INIT;

  strbuf_worktree_ref(wt, &ref, "HEAD");
  fsck_head_link(ref.buf, &head_points_at, &head_oid);
  if (head_points_at && !is_null_oid(&head_oid))
   fsck_handle_ref(ref.buf, &head_oid, 0, ((void*)0));
  strbuf_release(&ref);

  if (include_reflogs)
   refs_for_each_reflog(get_worktree_ref_store(wt),
          fsck_handle_reflog, wt);
 }
 free_worktrees(worktrees);
 if (!default_refs) {
  fprintf_ln(stderr, _("notice: No default references"));
  show_unreachable = 0;
 }
}
