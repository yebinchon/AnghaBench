
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int unpack_tree_opts ;
struct unpack_trees_options {int head_idx; int update; int merge; int reset; int fn; int dst_index; int src_index; } ;
struct tree_desc {scalar_t__ buffer; int * member_0; } ;
struct tree {int dummy; } ;
struct strbuf {size_t len; char* buf; } ;
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;
struct TYPE_5__ {int index; } ;


 int BUG (char*,char const*) ;
 int COMMIT_LOCK ;
 int GIT_REFLOG_ACTION_ENVIRONMENT ;
 struct lock_file LOCK_INIT ;
 int LOCK_REPORT_ON_ERROR ;
 int REF_NO_DEREF ;
 unsigned int RESET_HEAD_DETACH ;
 unsigned int RESET_HEAD_HARD ;
 unsigned int RESET_HEAD_REFS_ONLY ;
 unsigned int RESET_HEAD_RUN_POST_CHECKOUT_HOOK ;
 unsigned int RESET_ORIG_HEAD ;
 struct strbuf STRBUF_INIT ;
 int UPDATE_REFS_MSG_ON_ERR ;
 int _ (char*) ;
 int create_symref (char*,char const*,char const*) ;
 int delete_ref (int *,char*,struct object_id*,int ) ;
 int error (int ,...) ;
 int fill_tree_descriptor (TYPE_1__*,struct tree_desc*,struct object_id*) ;
 int free (void*) ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 char* getenv (int ) ;
 scalar_t__ hold_locked_index (struct lock_file*,int ) ;
 int memset (struct unpack_trees_options*,int ,int) ;
 struct object_id null_oid ;
 int oid_to_hex (struct object_id*) ;
 int oneway_merge ;
 struct tree* parse_tree_indirect (struct object_id*) ;
 int prime_cache_tree (TYPE_1__*,int ,struct tree*) ;
 scalar_t__ repo_read_index_unmerged (TYPE_1__*) ;
 int rollback_lock_file (struct lock_file*) ;
 int run_hook_le (int *,char*,int ,int ,char*,int *) ;
 int setup_unpack_trees_porcelain (struct unpack_trees_options*,char const*) ;
 int starts_with (char const*,char*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 TYPE_1__* the_repository ;
 int twoway_merge ;
 scalar_t__ unpack_trees (int,struct tree_desc*,struct unpack_trees_options*) ;
 int update_ref (char const*,char const*,struct object_id*,struct object_id*,int ,int ) ;
 scalar_t__ write_locked_index (int ,struct lock_file*,int ) ;

__attribute__((used)) static int reset_head(struct object_id *oid, const char *action,
        const char *switch_to_branch, unsigned flags,
        const char *reflog_orig_head, const char *reflog_head)
{
 unsigned detach_head = flags & RESET_HEAD_DETACH;
 unsigned reset_hard = flags & RESET_HEAD_HARD;
 unsigned run_hook = flags & RESET_HEAD_RUN_POST_CHECKOUT_HOOK;
 unsigned refs_only = flags & RESET_HEAD_REFS_ONLY;
 unsigned update_orig_head = flags & RESET_ORIG_HEAD;
 struct object_id head_oid;
 struct tree_desc desc[2] = { { ((void*)0) }, { ((void*)0) } };
 struct lock_file lock = LOCK_INIT;
 struct unpack_trees_options unpack_tree_opts;
 struct tree *tree;
 const char *reflog_action;
 struct strbuf msg = STRBUF_INIT;
 size_t prefix_len;
 struct object_id *orig = ((void*)0), oid_orig,
  *old_orig = ((void*)0), oid_old_orig;
 int ret = 0, nr = 0;

 if (switch_to_branch && !starts_with(switch_to_branch, "refs/"))
  BUG("Not a fully qualified branch: '%s'", switch_to_branch);

 if (!refs_only && hold_locked_index(&lock, LOCK_REPORT_ON_ERROR) < 0) {
  ret = -1;
  goto leave_reset_head;
 }

 if ((!oid || !reset_hard) && get_oid("HEAD", &head_oid)) {
  ret = error(_("could not determine HEAD revision"));
  goto leave_reset_head;
 }

 if (!oid)
  oid = &head_oid;

 if (refs_only)
  goto reset_head_refs;

 memset(&unpack_tree_opts, 0, sizeof(unpack_tree_opts));
 setup_unpack_trees_porcelain(&unpack_tree_opts, action);
 unpack_tree_opts.head_idx = 1;
 unpack_tree_opts.src_index = the_repository->index;
 unpack_tree_opts.dst_index = the_repository->index;
 unpack_tree_opts.fn = reset_hard ? oneway_merge : twoway_merge;
 unpack_tree_opts.update = 1;
 unpack_tree_opts.merge = 1;
 if (!detach_head)
  unpack_tree_opts.reset = 1;

 if (repo_read_index_unmerged(the_repository) < 0) {
  ret = error(_("could not read index"));
  goto leave_reset_head;
 }

 if (!reset_hard && !fill_tree_descriptor(the_repository, &desc[nr++], &head_oid)) {
  ret = error(_("failed to find tree of %s"),
       oid_to_hex(&head_oid));
  goto leave_reset_head;
 }

 if (!fill_tree_descriptor(the_repository, &desc[nr++], oid)) {
  ret = error(_("failed to find tree of %s"), oid_to_hex(oid));
  goto leave_reset_head;
 }

 if (unpack_trees(nr, desc, &unpack_tree_opts)) {
  ret = -1;
  goto leave_reset_head;
 }

 tree = parse_tree_indirect(oid);
 prime_cache_tree(the_repository, the_repository->index, tree);

 if (write_locked_index(the_repository->index, &lock, COMMIT_LOCK) < 0) {
  ret = error(_("could not write index"));
  goto leave_reset_head;
 }

reset_head_refs:
 reflog_action = getenv(GIT_REFLOG_ACTION_ENVIRONMENT);
 strbuf_addf(&msg, "%s: ", reflog_action ? reflog_action : "rebase");
 prefix_len = msg.len;

 if (update_orig_head) {
  if (!get_oid("ORIG_HEAD", &oid_old_orig))
   old_orig = &oid_old_orig;
  if (!get_oid("HEAD", &oid_orig)) {
   orig = &oid_orig;
   if (!reflog_orig_head) {
    strbuf_addstr(&msg, "updating ORIG_HEAD");
    reflog_orig_head = msg.buf;
   }
   update_ref(reflog_orig_head, "ORIG_HEAD", orig,
       old_orig, 0, UPDATE_REFS_MSG_ON_ERR);
  } else if (old_orig)
   delete_ref(((void*)0), "ORIG_HEAD", old_orig, 0);
 }

 if (!reflog_head) {
  strbuf_setlen(&msg, prefix_len);
  strbuf_addstr(&msg, "updating HEAD");
  reflog_head = msg.buf;
 }
 if (!switch_to_branch)
  ret = update_ref(reflog_head, "HEAD", oid, orig,
     detach_head ? REF_NO_DEREF : 0,
     UPDATE_REFS_MSG_ON_ERR);
 else {
  ret = update_ref(reflog_head, switch_to_branch, oid,
     ((void*)0), 0, UPDATE_REFS_MSG_ON_ERR);
  if (!ret)
   ret = create_symref("HEAD", switch_to_branch,
         reflog_head);
 }
 if (run_hook)
  run_hook_le(((void*)0), "post-checkout",
       oid_to_hex(orig ? orig : &null_oid),
       oid_to_hex(oid), "1", ((void*)0));

leave_reset_head:
 strbuf_release(&msg);
 rollback_lock_file(&lock);
 while (nr)
  free((void *)desc[--nr].buffer);
 return ret;
}
