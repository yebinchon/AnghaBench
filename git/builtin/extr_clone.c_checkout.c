
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpack_trees_options {int update; int merge; int clone; int verbose_update; int * dst_index; int * src_index; int fn; } ;
struct tree_desc {int dummy; } ;
struct tree {int size; int buffer; } ;
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;
struct argv_array {int argv; } ;
struct TYPE_2__ {scalar_t__ nr; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int COMMIT_LOCK ;
 int LOCK_DIE_ON_ERROR ;
 struct lock_file LOCK_INIT ;
 int RESOLVE_REF_READING ;
 int RUN_GIT_CMD ;
 int _ (char*) ;
 scalar_t__ advice_detached_head ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,char*) ;
 int argv_array_pushf (struct argv_array*,char*,int) ;
 int argv_array_pushl (struct argv_array*,char*,char*,char*,char*,int *) ;
 int detach_advice (int ) ;
 int die (int ) ;
 int free (char*) ;
 int hold_locked_index (struct lock_file*,int ) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 int max_jobs ;
 int memset (struct unpack_trees_options*,int ,int) ;
 struct object_id null_oid ;
 int oid_to_hex (struct object_id*) ;
 int oneway_merge ;
 scalar_t__ option_no_checkout ;
 TYPE_1__ option_recurse_submodules ;
 scalar_t__ option_remote_submodules ;
 int option_shallow_submodules ;
 scalar_t__ option_verbosity ;
 int parse_tree (struct tree*) ;
 struct tree* parse_tree_indirect (struct object_id*) ;
 char* resolve_refdup (char*,int ,struct object_id*,int *) ;
 int run_command_v_opt (int ,int ) ;
 int run_hook_le (int *,char*,int ,int ,char*,int *) ;
 int setup_work_tree () ;
 int starts_with (char*,char*) ;
 int strcmp (char*,char*) ;
 int the_index ;
 scalar_t__ unpack_trees (int,struct tree_desc*,struct unpack_trees_options*) ;
 int warning (int ) ;
 scalar_t__ write_locked_index (int *,struct lock_file*,int ) ;

__attribute__((used)) static int checkout(int submodule_progress)
{
 struct object_id oid;
 char *head;
 struct lock_file lock_file = LOCK_INIT;
 struct unpack_trees_options opts;
 struct tree *tree;
 struct tree_desc t;
 int err = 0;

 if (option_no_checkout)
  return 0;

 head = resolve_refdup("HEAD", RESOLVE_REF_READING, &oid, ((void*)0));
 if (!head) {
  warning(_("remote HEAD refers to nonexistent ref, "
     "unable to checkout.\n"));
  return 0;
 }
 if (!strcmp(head, "HEAD")) {
  if (advice_detached_head)
   detach_advice(oid_to_hex(&oid));
 } else {
  if (!starts_with(head, "refs/heads/"))
   die(_("HEAD not found below refs/heads!"));
 }
 free(head);


 setup_work_tree();

 hold_locked_index(&lock_file, LOCK_DIE_ON_ERROR);

 memset(&opts, 0, sizeof opts);
 opts.update = 1;
 opts.merge = 1;
 opts.clone = 1;
 opts.fn = oneway_merge;
 opts.verbose_update = (option_verbosity >= 0);
 opts.src_index = &the_index;
 opts.dst_index = &the_index;

 tree = parse_tree_indirect(&oid);
 parse_tree(tree);
 init_tree_desc(&t, tree->buffer, tree->size);
 if (unpack_trees(1, &t, &opts) < 0)
  die(_("unable to checkout working tree"));

 if (write_locked_index(&the_index, &lock_file, COMMIT_LOCK))
  die(_("unable to write new index file"));

 err |= run_hook_le(((void*)0), "post-checkout", oid_to_hex(&null_oid),
      oid_to_hex(&oid), "1", ((void*)0));

 if (!err && (option_recurse_submodules.nr > 0)) {
  struct argv_array args = ARGV_ARRAY_INIT;
  argv_array_pushl(&args, "submodule", "update", "--init", "--recursive", ((void*)0));

  if (option_shallow_submodules == 1)
   argv_array_push(&args, "--depth=1");

  if (max_jobs != -1)
   argv_array_pushf(&args, "--jobs=%d", max_jobs);

  if (submodule_progress)
   argv_array_push(&args, "--progress");

  if (option_verbosity < 0)
   argv_array_push(&args, "--quiet");

  if (option_remote_submodules) {
   argv_array_push(&args, "--remote");
   argv_array_push(&args, "--no-fetch");
  }

  err = run_command_v_opt(args.argv, RUN_GIT_CMD);
  argv_array_clear(&args);
 }

 return err;
}
