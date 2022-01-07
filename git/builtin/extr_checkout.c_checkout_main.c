
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr; } ;
struct checkout_opts {int overwrite_ignore; char const* prefix; int show_progress; scalar_t__ track; int merge; int discard_changes; char* ignore_unmerged_opt; int ignore_unmerged; char const* new_branch; char const* new_branch_force; char const* new_orphan_branch; int overlay_mode; int checkout_index; int checkout_worktree; char* from_treeish; TYPE_1__ pathspec; scalar_t__ patch_mode; int branch_exists; scalar_t__ force; int writeout_stage; scalar_t__ force_detach; int empty_pathspec_ok; scalar_t__ accept_pathspec; int source_tree; scalar_t__ accept_ref; scalar_t__ dwim_new_local_branch; scalar_t__ conflict_style; scalar_t__ quiet; } ;
struct branch_info {int name; } ;
typedef int new_branch_info ;


 scalar_t__ BRANCH_TRACK_UNSPECIFIED ;
 int BUG (char*) ;
 int PARSE_OPT_KEEP_DASHDASH ;
 int PATHSPEC_PREFIX_ORIGIN ;
 struct strbuf STRBUF_INIT ;
 int UNLEAK (struct checkout_opts*) ;
 int _ (char*) ;
 scalar_t__ advice_checkout_ambiguous_remote_branch_name ;
 int advise (int ,char const*,int) ;
 int checkout_branch (struct checkout_opts*,struct branch_info*) ;
 int checkout_paths (struct checkout_opts*,int ) ;
 int die (int ,...) ;
 scalar_t__ get_oid_mb (char*,struct object_id*) ;
 int git_checkout_config ;
 int git_config (int ,struct checkout_opts*) ;
 int git_xmerge_config (char*,scalar_t__,int *) ;
 int isatty (int) ;
 int memset (struct branch_info*,int ,int) ;
 int parse_branchname_arg (int,char const**,int,struct branch_info*,struct checkout_opts*,struct object_id*,int*) ;
 int parse_options (int,char const**,char const*,struct option*,char const* const*,int) ;
 int parse_pathspec (TYPE_1__*,int ,int ,char const*,char const**) ;
 int setup_new_branch_info_and_source_tree (struct branch_info*,struct checkout_opts*,struct object_id*,char*) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strbuf_release (struct strbuf*) ;
 char* strchr (char const*,char) ;
 int strcmp (char const*,char*) ;
 int validate_branchname (char const*,struct strbuf*) ;
 int validate_new_branchname (char const*,struct strbuf*,int ) ;

__attribute__((used)) static int checkout_main(int argc, const char **argv, const char *prefix,
    struct checkout_opts *opts, struct option *options,
    const char * const usagestr[])
{
 struct branch_info new_branch_info;
 int dwim_remotes_matched = 0;
 int parseopt_flags = 0;

 memset(&new_branch_info, 0, sizeof(new_branch_info));
 opts->overwrite_ignore = 1;
 opts->prefix = prefix;
 opts->show_progress = -1;

 git_config(git_checkout_config, opts);

 opts->track = BRANCH_TRACK_UNSPECIFIED;

 if (!opts->accept_pathspec && !opts->accept_ref)
  BUG("make up your mind, you need to take _something_");
 if (opts->accept_pathspec && opts->accept_ref)
  parseopt_flags = PARSE_OPT_KEEP_DASHDASH;

 argc = parse_options(argc, argv, prefix, options,
        usagestr, parseopt_flags);

 if (opts->show_progress < 0) {
  if (opts->quiet)
   opts->show_progress = 0;
  else
   opts->show_progress = isatty(2);
 }

 if (opts->conflict_style) {
  opts->merge = 1;
  git_xmerge_config("merge.conflictstyle", opts->conflict_style, ((void*)0));
 }
 if (opts->force) {
  opts->discard_changes = 1;
  opts->ignore_unmerged_opt = "--force";
  opts->ignore_unmerged = 1;
 }

 if ((!!opts->new_branch + !!opts->new_branch_force + !!opts->new_orphan_branch) > 1)
  die(_("-b, -B and --orphan are mutually exclusive"));

 if (opts->overlay_mode == 1 && opts->patch_mode)
  die(_("-p and --overlay are mutually exclusive"));

 if (opts->checkout_index >= 0 || opts->checkout_worktree >= 0) {
  if (opts->checkout_index < 0)
   opts->checkout_index = 0;
  if (opts->checkout_worktree < 0)
   opts->checkout_worktree = 0;
 } else {
  if (opts->checkout_index < 0)
   opts->checkout_index = -opts->checkout_index - 1;
  if (opts->checkout_worktree < 0)
   opts->checkout_worktree = -opts->checkout_worktree - 1;
 }
 if (opts->checkout_index < 0 || opts->checkout_worktree < 0)
  BUG("these flags should be non-negative by now");




 if (!opts->from_treeish && opts->checkout_index && !opts->checkout_worktree)
  opts->from_treeish = "HEAD";






 if (opts->new_branch_force)
  opts->new_branch = opts->new_branch_force;

 if (opts->new_orphan_branch)
  opts->new_branch = opts->new_orphan_branch;


 if (opts->track != BRANCH_TRACK_UNSPECIFIED && !opts->new_branch) {
  const char *argv0 = argv[0];
  if (!argc || !strcmp(argv0, "--"))
   die(_("--track needs a branch name"));
  skip_prefix(argv0, "refs/", &argv0);
  skip_prefix(argv0, "remotes/", &argv0);
  argv0 = strchr(argv0, '/');
  if (!argv0 || !argv0[1])
   die(_("missing branch name; try -b"));
  opts->new_branch = argv0 + 1;
 }
 if (argc && opts->accept_ref) {
  struct object_id rev;
  int dwim_ok =
   !opts->patch_mode &&
   opts->dwim_new_local_branch &&
   opts->track == BRANCH_TRACK_UNSPECIFIED &&
   !opts->new_branch;
  int n = parse_branchname_arg(argc, argv, dwim_ok,
          &new_branch_info, opts, &rev,
          &dwim_remotes_matched);
  argv += n;
  argc -= n;
 } else if (!opts->accept_ref && opts->from_treeish) {
  struct object_id rev;

  if (get_oid_mb(opts->from_treeish, &rev))
   die(_("could not resolve %s"), opts->from_treeish);

  setup_new_branch_info_and_source_tree(&new_branch_info,
            opts, &rev,
            opts->from_treeish);

  if (!opts->source_tree)
   die(_("reference is not a tree: %s"), opts->from_treeish);
 }

 if (opts->accept_pathspec && !opts->empty_pathspec_ok && !argc &&
     !opts->patch_mode)
  die(_("you must specify path(s) to restore"));

 if (argc) {
  parse_pathspec(&opts->pathspec, 0,
          opts->patch_mode ? PATHSPEC_PREFIX_ORIGIN : 0,
          prefix, argv);

  if (!opts->pathspec.nr)
   die(_("invalid path specification"));





  if (opts->new_branch && argc == 1)
   die(_("'%s' is not a commit and a branch '%s' cannot be created from it"),
    argv[0], opts->new_branch);

  if (opts->force_detach)
   die(_("git checkout: --detach does not take a path argument '%s'"),
       argv[0]);

  if (1 < !!opts->writeout_stage + !!opts->force + !!opts->merge)
   die(_("git checkout: --ours/--theirs, --force and --merge are incompatible when\n"
         "checking out of the index."));
 }

 if (opts->new_branch) {
  struct strbuf buf = STRBUF_INIT;

  if (opts->new_branch_force)
   opts->branch_exists = validate_branchname(opts->new_branch, &buf);
  else
   opts->branch_exists =
    validate_new_branchname(opts->new_branch, &buf, 0);
  strbuf_release(&buf);
 }

 UNLEAK(opts);
 if (opts->patch_mode || opts->pathspec.nr) {
  int ret = checkout_paths(opts, new_branch_info.name);
  if (ret && dwim_remotes_matched > 1 &&
      advice_checkout_ambiguous_remote_branch_name)
   advise(_("'%s' matched more than one remote tracking branch.\n"
     "We found %d remotes with a reference that matched. So we fell back\n"
     "on trying to resolve the argument as a path, but failed there too!\n"
     "\n"
     "If you meant to check out a remote tracking branch on, e.g. 'origin',\n"
     "you can do so by fully qualifying the name with the --track option:\n"
     "\n"
     "    git checkout --track origin/<name>\n"
     "\n"
     "If you'd like to always have checkouts of an ambiguous <name> prefer\n"
     "one remote, e.g. the 'origin' remote, consider setting\n"
     "checkout.defaultRemote=origin in your config."),
          argv[0],
          dwim_remotes_matched);
  return ret;
 } else {
  return checkout_branch(opts, &new_branch_info);
 }
}
