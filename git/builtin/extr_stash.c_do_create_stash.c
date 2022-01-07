
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct stash_info {int w_commit; int w_tree; int i_commit; int u_commit; int i_tree; int b_commit; } ;
struct pathspec {int dummy; } ;
struct commit_list {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int CMIT_FMT_ONELINE ;
 int DEFAULT_ABBREV ;
 int REFRESH_QUIET ;
 int REF_ISSYMREF ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int check_changes (struct pathspec const*,int,struct strbuf*) ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 scalar_t__ commit_tree (int ,int ,int *,struct commit_list*,int *,int *,int *) ;
 char* find_unique_abbrev (int *,int ) ;
 int fprintf_ln (int ,int ) ;
 scalar_t__ get_oid (char*,int *) ;
 struct commit* lookup_commit (int ,int *) ;
 int pp_commit_easy (int ,struct commit*,struct strbuf*) ;
 int prepare_fallback_ident (char*,char*) ;
 int read_cache_preload (int *) ;
 scalar_t__ refresh_and_write_cache (int ,int ,int ) ;
 char* resolve_ref_unsafe (char*,int ,int *,int*) ;
 scalar_t__ save_untracked_files (struct stash_info*,struct strbuf*,struct strbuf) ;
 int stash_patch (struct stash_info*,struct pathspec const*,struct strbuf*,int) ;
 scalar_t__ stash_working_tree (struct stash_info*,struct pathspec const*) ;
 int stderr ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_insertf (struct strbuf*,int ,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 char* strrchr (char const*,char) ;
 int the_repository ;
 scalar_t__ write_cache_as_tree (int *,int ,int *) ;

__attribute__((used)) static int do_create_stash(const struct pathspec *ps, struct strbuf *stash_msg_buf,
      int include_untracked, int patch_mode,
      struct stash_info *info, struct strbuf *patch,
      int quiet)
{
 int ret = 0;
 int flags = 0;
 int untracked_commit_option = 0;
 const char *head_short_sha1 = ((void*)0);
 const char *branch_ref = ((void*)0);
 const char *branch_name = "(no branch)";
 struct commit *head_commit = ((void*)0);
 struct commit_list *parents = ((void*)0);
 struct strbuf msg = STRBUF_INIT;
 struct strbuf commit_tree_label = STRBUF_INIT;
 struct strbuf untracked_files = STRBUF_INIT;

 prepare_fallback_ident("git stash", "git@stash");

 read_cache_preload(((void*)0));
 if (refresh_and_write_cache(REFRESH_QUIET, 0, 0) < 0) {
  ret = -1;
  goto done;
 }

 if (get_oid("HEAD", &info->b_commit)) {
  if (!quiet)
   fprintf_ln(stderr, _("You do not have "
          "the initial commit yet"));
  ret = -1;
  goto done;
 } else {
  head_commit = lookup_commit(the_repository, &info->b_commit);
 }

 if (!check_changes(ps, include_untracked, &untracked_files)) {
  ret = 1;
  goto done;
 }

 branch_ref = resolve_ref_unsafe("HEAD", 0, ((void*)0), &flags);
 if (flags & REF_ISSYMREF)
  branch_name = strrchr(branch_ref, '/') + 1;
 head_short_sha1 = find_unique_abbrev(&head_commit->object.oid,
          DEFAULT_ABBREV);
 strbuf_addf(&msg, "%s: %s ", branch_name, head_short_sha1);
 pp_commit_easy(CMIT_FMT_ONELINE, head_commit, &msg);

 strbuf_addf(&commit_tree_label, "index on %s\n", msg.buf);
 commit_list_insert(head_commit, &parents);
 if (write_cache_as_tree(&info->i_tree, 0, ((void*)0)) ||
     commit_tree(commit_tree_label.buf, commit_tree_label.len,
   &info->i_tree, parents, &info->i_commit, ((void*)0), ((void*)0))) {
  if (!quiet)
   fprintf_ln(stderr, _("Cannot save the current "
          "index state"));
  ret = -1;
  goto done;
 }

 if (include_untracked) {
  if (save_untracked_files(info, &msg, untracked_files)) {
   if (!quiet)
    fprintf_ln(stderr, _("Cannot save "
           "the untracked files"));
   ret = -1;
   goto done;
  }
  untracked_commit_option = 1;
 }
 if (patch_mode) {
  ret = stash_patch(info, ps, patch, quiet);
  if (ret < 0) {
   if (!quiet)
    fprintf_ln(stderr, _("Cannot save the current "
           "worktree state"));
   goto done;
  } else if (ret > 0) {
   goto done;
  }
 } else {
  if (stash_working_tree(info, ps)) {
   if (!quiet)
    fprintf_ln(stderr, _("Cannot save the current "
           "worktree state"));
   ret = -1;
   goto done;
  }
 }

 if (!stash_msg_buf->len)
  strbuf_addf(stash_msg_buf, "WIP on %s", msg.buf);
 else
  strbuf_insertf(stash_msg_buf, 0, "On %s: ", branch_name);





 parents = ((void*)0);
 if (untracked_commit_option)
  commit_list_insert(lookup_commit(the_repository,
       &info->u_commit),
       &parents);
 commit_list_insert(lookup_commit(the_repository, &info->i_commit),
      &parents);
 commit_list_insert(head_commit, &parents);

 if (commit_tree(stash_msg_buf->buf, stash_msg_buf->len, &info->w_tree,
   parents, &info->w_commit, ((void*)0), ((void*)0))) {
  if (!quiet)
   fprintf_ln(stderr, _("Cannot record "
          "working tree state"));
  ret = -1;
  goto done;
 }

done:
 strbuf_release(&commit_tree_label);
 strbuf_release(&msg);
 strbuf_release(&untracked_files);
 return ret;
}
