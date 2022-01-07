
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int oid; } ;
struct tree {TYPE_2__ object; } ;
struct pathspec {scalar_t__ nr; } ;
struct option {char* member_2; char* member_4; char* member_5; int member_7; int member_6; int * member_3; int member_1; int member_0; } ;
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;
struct TYPE_7__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_10__ {int * empty_tree; } ;
struct TYPE_9__ {int updated_skipworktree; } ;


 int COMMIT_LOCK ;
 int HARD ;
 int KEEP ;
 int LOCK_DIE_ON_ERROR ;
 struct lock_file LOCK_INIT ;
 int MERGE ;
 int MIXED ;
 int NONE ;
 int N_ (char*) ;
 int OPTION_CALLBACK ;
 struct option const OPT_BOOL (char,char*,int*,int ) ;
 struct option const OPT_END () ;
 struct option const OPT_SET_INT (int ,char*,int*,int ,int) ;
 struct option const OPT__QUIET (int*,int ) ;
 int PARSE_OPT_KEEP_DASHDASH ;
 int PARSE_OPT_OPTARG ;
 int REFRESH_INDEX_DELAY_WARNING_IN_MS ;
 int REFRESH_IN_PORCELAIN ;
 int REFRESH_QUIET ;
 int SOFT ;
 char* _ (char*) ;
 scalar_t__ advice_reset_quiet_warning ;
 int die (char*,...) ;
 int die_if_unmerged_cache (int) ;
 scalar_t__ get_git_work_tree () ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 scalar_t__ get_oid_committish (char const*,struct object_id*) ;
 scalar_t__ get_oid_treeish (char const*,struct object_id*) ;
 int getnanotime () ;
 int git_config (int ,int *) ;
 int git_config_get_bool (char*,int*) ;
 int git_reset_config ;
 int git_reset_usage ;
 int hold_locked_index (struct lock_file*,int ) ;
 scalar_t__ is_bare_repository () ;
 struct commit* lookup_commit_reference (int ,struct object_id*) ;
 int oidcpy (struct object_id*,int *) ;
 int option_parse_recurse_submodules_worktree_updater ;
 int parse_args (struct pathspec*,char const**,char const*,int,char const**) ;
 int parse_options (int,char const**,char const*,struct option const*,int ,int ) ;
 struct tree* parse_tree_indirect (struct object_id*) ;
 int print_new_head_line (struct commit*) ;
 int printf (char*,int) ;
 scalar_t__ read_from_tree (struct pathspec*,struct object_id*,int) ;
 int refresh_index (TYPE_3__*,int,int *,int *,char*) ;
 int remove_branch_state (int ,int ) ;
 int reset_index (struct object_id*,int,int) ;
 int reset_refs (char const*,struct object_id*) ;
 char** reset_type_names ;
 int run_add_interactive (char const*,char*,struct pathspec*) ;
 int setup_work_tree () ;
 int strcmp (char const*,char*) ;
 TYPE_5__* the_hash_algo ;
 TYPE_3__ the_index ;
 int the_repository ;
 int trace2_cmd_mode (char*) ;
 int warning (char*) ;
 scalar_t__ write_locked_index (TYPE_3__*,struct lock_file*,int ) ;

int cmd_reset(int argc, const char **argv, const char *prefix)
{
 int reset_type = NONE, update_ref_status = 0, quiet = 0;
 int patch_mode = 0, unborn;
 const char *rev;
 struct object_id oid;
 struct pathspec pathspec;
 int intent_to_add = 0;
 const struct option options[] = {
  OPT__QUIET(&quiet, N_("be quiet, only report errors")),
  OPT_SET_INT(0, "mixed", &reset_type,
      N_("reset HEAD and index"), MIXED),
  OPT_SET_INT(0, "soft", &reset_type, N_("reset only HEAD"), SOFT),
  OPT_SET_INT(0, "hard", &reset_type,
    N_("reset HEAD, index and working tree"), HARD),
  OPT_SET_INT(0, "merge", &reset_type,
    N_("reset HEAD, index and working tree"), MERGE),
  OPT_SET_INT(0, "keep", &reset_type,
    N_("reset HEAD but keep local changes"), KEEP),
  { OPTION_CALLBACK, 0, "recurse-submodules", ((void*)0),
       "reset", "control recursive updating of submodules",
       PARSE_OPT_OPTARG, option_parse_recurse_submodules_worktree_updater },
  OPT_BOOL('p', "patch", &patch_mode, N_("select hunks interactively")),
  OPT_BOOL('N', "intent-to-add", &intent_to_add,
    N_("record only the fact that removed paths will be added later")),
  OPT_END()
 };

 git_config(git_reset_config, ((void*)0));
 git_config_get_bool("reset.quiet", &quiet);

 argc = parse_options(argc, argv, prefix, options, git_reset_usage,
      PARSE_OPT_KEEP_DASHDASH);
 parse_args(&pathspec, argv, prefix, patch_mode, &rev);

 unborn = !strcmp(rev, "HEAD") && get_oid("HEAD", &oid);
 if (unborn) {

  oidcpy(&oid, the_hash_algo->empty_tree);
 } else if (!pathspec.nr) {
  struct commit *commit;
  if (get_oid_committish(rev, &oid))
   die(_("Failed to resolve '%s' as a valid revision."), rev);
  commit = lookup_commit_reference(the_repository, &oid);
  if (!commit)
   die(_("Could not parse object '%s'."), rev);
  oidcpy(&oid, &commit->object.oid);
 } else {
  struct tree *tree;
  if (get_oid_treeish(rev, &oid))
   die(_("Failed to resolve '%s' as a valid tree."), rev);
  tree = parse_tree_indirect(&oid);
  if (!tree)
   die(_("Could not parse object '%s'."), rev);
  oidcpy(&oid, &tree->object.oid);
 }

 if (patch_mode) {
  if (reset_type != NONE)
   die(_("--patch is incompatible with --{hard,mixed,soft}"));
  trace2_cmd_mode("patch-interactive");
  return run_add_interactive(rev, "--patch=reset", &pathspec);
 }




 if (pathspec.nr) {
  if (reset_type == MIXED)
   warning(_("--mixed with paths is deprecated; use 'git reset -- <paths>' instead."));
  else if (reset_type != NONE)
   die(_("Cannot do %s reset with paths."),
     _(reset_type_names[reset_type]));
 }
 if (reset_type == NONE)
  reset_type = MIXED;

 if (pathspec.nr)
  trace2_cmd_mode("path");
 else
  trace2_cmd_mode(reset_type_names[reset_type]);

 if (reset_type != SOFT && (reset_type != MIXED || get_git_work_tree()))
  setup_work_tree();

 if (reset_type == MIXED && is_bare_repository())
  die(_("%s reset is not allowed in a bare repository"),
      _(reset_type_names[reset_type]));

 if (intent_to_add && reset_type != MIXED)
  die(_("-N can only be used with --mixed"));




 if (reset_type == SOFT || reset_type == KEEP)
  die_if_unmerged_cache(reset_type);

 if (reset_type != SOFT) {
  struct lock_file lock = LOCK_INIT;
  hold_locked_index(&lock, LOCK_DIE_ON_ERROR);
  if (reset_type == MIXED) {
   int flags = quiet ? REFRESH_QUIET : REFRESH_IN_PORCELAIN;
   if (read_from_tree(&pathspec, &oid, intent_to_add))
    return 1;
   the_index.updated_skipworktree = 1;
   if (!quiet && get_git_work_tree()) {
    uint64_t t_begin, t_delta_in_ms;

    t_begin = getnanotime();
    refresh_index(&the_index, flags, ((void*)0), ((void*)0),
           _("Unstaged changes after reset:"));
    t_delta_in_ms = (getnanotime() - t_begin) / 1000000;
    if (advice_reset_quiet_warning && t_delta_in_ms > REFRESH_INDEX_DELAY_WARNING_IN_MS) {
     printf(_("\nIt took %.2f seconds to enumerate unstaged changes after reset.  You can\n"
      "use '--quiet' to avoid this.  Set the config setting reset.quiet to true\n"
      "to make this the default.\n"), t_delta_in_ms / 1000.0);
    }
   }
  } else {
   int err = reset_index(&oid, reset_type, quiet);
   if (reset_type == KEEP && !err)
    err = reset_index(&oid, MIXED, quiet);
   if (err)
    die(_("Could not reset index file to revision '%s'."), rev);
  }

  if (write_locked_index(&the_index, &lock, COMMIT_LOCK))
   die(_("Could not write new index file."));
 }

 if (!pathspec.nr && !unborn) {


  update_ref_status = reset_refs(rev, &oid);

  if (reset_type == HARD && !update_ref_status && !quiet)
   print_new_head_line(lookup_commit_reference(the_repository, &oid));
 }
 if (!pathspec.nr)
  remove_branch_state(the_repository, 0);

 return update_ref_status;
}
