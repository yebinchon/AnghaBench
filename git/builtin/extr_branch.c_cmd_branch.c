
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct ref_sorting {int ignore_case; } ;
struct ref_format {char const* format; } ;
struct TYPE_2__ {scalar_t__ nr; } ;
struct ref_filter {int kind; int abbrev; int detached; scalar_t__ merge; int ignore_case; char const** name_patterns; scalar_t__ verbose; scalar_t__ no_commit; TYPE_1__ points_at; scalar_t__ with_commit; } ;
struct option {char* member_2; int member_7; int member_6; int member_5; int member_4; TYPE_1__* member_3; int member_1; int member_0; } ;
struct branch {char const* name; int refname; } ;
typedef int filter ;
typedef enum branch_track { ____Placeholder_branch_track } branch_track ;


 int BRANCH_TRACK_EXPLICIT ;
 int BRANCH_TRACK_OVERRIDE ;
 int DEFAULT_ABBREV ;
 int FILTER_REFS_BRANCHES ;
 int FILTER_REFS_DETACHED_HEAD ;
 int FILTER_REFS_REMOTES ;
 int N_ (char*) ;
 int OPTION_CALLBACK ;
 struct option OPT_BIT (char,char*,int*,int ,int) ;
 struct option OPT_BOOL (char,char*,int*,int ) ;
 struct option OPT_COLUMN (int ,char*,scalar_t__*,int ) ;
 struct option OPT_CONTAINS (scalar_t__*,int ) ;
 struct option OPT_END () ;
 struct option OPT_GROUP (int ) ;
 struct option OPT_MERGED (struct ref_filter*,int ) ;
 struct option OPT_NO_CONTAINS (scalar_t__*,int ) ;
 struct option OPT_NO_MERGED (struct ref_filter*,int ) ;
 struct option OPT_REF_SORT (struct ref_sorting**) ;
 struct option OPT_SET_INT (char,char*,int*,int ,int) ;
 struct option OPT_SET_INT_F (int ,char*,int*,int ,int,int ) ;
 struct option OPT_STRING (unsigned char,char*,char const**,int ,int ) ;
 struct option OPT_WITH (scalar_t__*,int ) ;
 struct option OPT_WITHOUT (scalar_t__*,int ) ;
 struct option OPT__ABBREV (int*) ;
 struct option OPT__COLOR (int *,int ) ;
 struct option OPT__FORCE (int*,int ,int ) ;
 struct option OPT__QUIET (int*,int ) ;
 struct option OPT__VERBOSE (scalar_t__*,int ) ;
 int PARSE_OPT_HIDDEN ;
 int PARSE_OPT_NOCOMPLETE ;
 scalar_t__ REF_FILTER_MERGED_NONE ;
 struct ref_format REF_FORMAT_INIT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 struct branch* branch_get (char const*) ;
 int branch_has_merge_config (struct branch*) ;
 int branch_use_color ;
 int builtin_branch_usage ;
 scalar_t__ colopts ;
 int copy_or_rename_branch (char const*,char const*,int,int) ;
 int create_branch (int ,char const*,char const*,int,int ,int,int,int) ;
 int delete_branches (int,char const**,int,int,int) ;
 int die (int ,...) ;
 scalar_t__ edit_branch_description (char const*) ;
 int error (int ,char const*) ;
 scalar_t__ explicitly_enable_column (scalar_t__) ;
 int finalize_colopts (scalar_t__*,int) ;
 int git_branch_config ;
 int git_branch_track ;
 int git_config (int ,struct ref_sorting**) ;
 int git_config_set_multivar (int ,int *,int *,int) ;
 char const* head ;
 int head_oid ;
 int memset (struct ref_filter*,int ,int) ;
 int output ;
 int parse_opt_object_name ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int print_columns (int *,scalar_t__,int *) ;
 int print_current_branch_name () ;
 int print_ref_list (struct ref_filter*,struct ref_sorting*,struct ref_format*) ;
 struct ref_sorting* ref_default_sorting () ;
 int ref_exists (int ) ;
 char* resolve_refdup (char*,int ,int *,int *) ;
 int setup_auto_pager (char*,int) ;
 int setup_ref_filter_porcelain_msg () ;
 int skip_prefix (char const*,char*,char const**) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strcmp (char const*,char*) ;
 int string_list_clear (int *,int ) ;
 int the_repository ;
 int usage_with_options (int ,struct option*) ;

int cmd_branch(int argc, const char **argv, const char *prefix)
{
 int delete = 0, rename = 0, copy = 0, force = 0, list = 0;
 int show_current = 0;
 int reflog = 0, edit_description = 0;
 int quiet = 0, unset_upstream = 0;
 const char *new_upstream = ((void*)0);
 enum branch_track track;
 struct ref_filter filter;
 int icase = 0;
 static struct ref_sorting *sorting = ((void*)0), **sorting_tail = &sorting;
 struct ref_format format = REF_FORMAT_INIT;

 struct option options[] = {
  OPT_GROUP(N_("Generic options")),
  OPT__VERBOSE(&filter.verbose,
   N_("show hash and subject, give twice for upstream branch")),
  OPT__QUIET(&quiet, N_("suppress informational messages")),
  OPT_SET_INT('t', "track", &track, N_("set up tracking mode (see git-pull(1))"),
   BRANCH_TRACK_EXPLICIT),
  OPT_SET_INT_F(0, "set-upstream", &track, N_("do not use"),
   BRANCH_TRACK_OVERRIDE, PARSE_OPT_HIDDEN),
  OPT_STRING('u', "set-upstream-to", &new_upstream, N_("upstream"), N_("change the upstream info")),
  OPT_BOOL(0, "unset-upstream", &unset_upstream, N_("Unset the upstream info")),
  OPT__COLOR(&branch_use_color, N_("use colored output")),
  OPT_SET_INT('r', "remotes", &filter.kind, N_("act on remote-tracking branches"),
   FILTER_REFS_REMOTES),
  OPT_CONTAINS(&filter.with_commit, N_("print only branches that contain the commit")),
  OPT_NO_CONTAINS(&filter.no_commit, N_("print only branches that don't contain the commit")),
  OPT_WITH(&filter.with_commit, N_("print only branches that contain the commit")),
  OPT_WITHOUT(&filter.no_commit, N_("print only branches that don't contain the commit")),
  OPT__ABBREV(&filter.abbrev),

  OPT_GROUP(N_("Specific git-branch actions:")),
  OPT_SET_INT('a', "all", &filter.kind, N_("list both remote-tracking and local branches"),
   FILTER_REFS_REMOTES | FILTER_REFS_BRANCHES),
  OPT_BIT('d', "delete", &delete, N_("delete fully merged branch"), 1),
  OPT_BIT('D', ((void*)0), &delete, N_("delete branch (even if not merged)"), 2),
  OPT_BIT('m', "move", &rename, N_("move/rename a branch and its reflog"), 1),
  OPT_BIT('M', ((void*)0), &rename, N_("move/rename a branch, even if target exists"), 2),
  OPT_BIT('c', "copy", &copy, N_("copy a branch and its reflog"), 1),
  OPT_BIT('C', ((void*)0), &copy, N_("copy a branch, even if target exists"), 2),
  OPT_BOOL('l', "list", &list, N_("list branch names")),
  OPT_BOOL(0, "show-current", &show_current, N_("show current branch name")),
  OPT_BOOL(0, "create-reflog", &reflog, N_("create the branch's reflog")),
  OPT_BOOL(0, "edit-description", &edit_description,
    N_("edit the description for the branch")),
  OPT__FORCE(&force, N_("force creation, move/rename, deletion"), PARSE_OPT_NOCOMPLETE),
  OPT_MERGED(&filter, N_("print only branches that are merged")),
  OPT_NO_MERGED(&filter, N_("print only branches that are not merged")),
  OPT_COLUMN(0, "column", &colopts, N_("list branches in columns")),
  OPT_REF_SORT(sorting_tail),
  {
   OPTION_CALLBACK, 0, "points-at", &filter.points_at, N_("object"),
   N_("print only branches of the object"), 0, parse_opt_object_name
  },
  OPT_BOOL('i', "ignore-case", &icase, N_("sorting and filtering are case insensitive")),
  OPT_STRING( 0 , "format", &format.format, N_("format"), N_("format to use for the output")),
  OPT_END(),
 };

 setup_ref_filter_porcelain_msg();

 memset(&filter, 0, sizeof(filter));
 filter.kind = FILTER_REFS_BRANCHES;
 filter.abbrev = -1;

 if (argc == 2 && !strcmp(argv[1], "-h"))
  usage_with_options(builtin_branch_usage, options);

 git_config(git_branch_config, sorting_tail);

 track = git_branch_track;

 head = resolve_refdup("HEAD", 0, &head_oid, ((void*)0));
 if (!head)
  die(_("Failed to resolve HEAD as a valid ref."));
 if (!strcmp(head, "HEAD"))
  filter.detached = 1;
 else if (!skip_prefix(head, "refs/heads/", &head))
  die(_("HEAD not found below refs/heads!"));

 argc = parse_options(argc, argv, prefix, options, builtin_branch_usage,
        0);

 if (!delete && !rename && !copy && !edit_description && !new_upstream &&
     !show_current && !unset_upstream && argc == 0)
  list = 1;

 if (filter.with_commit || filter.merge != REF_FILTER_MERGED_NONE || filter.points_at.nr ||
     filter.no_commit)
  list = 1;

 if (!!delete + !!rename + !!copy + !!new_upstream + !!show_current +
     list + unset_upstream > 1)
  usage_with_options(builtin_branch_usage, options);

 if (filter.abbrev == -1)
  filter.abbrev = DEFAULT_ABBREV;
 filter.ignore_case = icase;

 finalize_colopts(&colopts, -1);
 if (filter.verbose) {
  if (explicitly_enable_column(colopts))
   die(_("--column and --verbose are incompatible"));
  colopts = 0;
 }

 if (force) {
  delete *= 2;
  rename *= 2;
  copy *= 2;
 }

 if (list)
  setup_auto_pager("branch", 1);

 if (delete) {
  if (!argc)
   die(_("branch name required"));
  return delete_branches(argc, argv, delete > 1, filter.kind, quiet);
 } else if (show_current) {
  print_current_branch_name();
  return 0;
 } else if (list) {

  if ((filter.kind & FILTER_REFS_BRANCHES) && filter.detached)
   filter.kind |= FILTER_REFS_DETACHED_HEAD;
  filter.name_patterns = argv;







  if (!sorting)
   sorting = ref_default_sorting();
  sorting->ignore_case = icase;
  print_ref_list(&filter, sorting, &format);
  print_columns(&output, colopts, ((void*)0));
  string_list_clear(&output, 0);
  return 0;
 } else if (edit_description) {
  const char *branch_name;
  struct strbuf branch_ref = STRBUF_INIT;

  if (!argc) {
   if (filter.detached)
    die(_("Cannot give description to detached HEAD"));
   branch_name = head;
  } else if (argc == 1)
   branch_name = argv[0];
  else
   die(_("cannot edit description of more than one branch"));

  strbuf_addf(&branch_ref, "refs/heads/%s", branch_name);
  if (!ref_exists(branch_ref.buf)) {
   strbuf_release(&branch_ref);

   if (!argc)
    return error(_("No commit on branch '%s' yet."),
          branch_name);
   else
    return error(_("No branch named '%s'."),
          branch_name);
  }
  strbuf_release(&branch_ref);

  if (edit_branch_description(branch_name))
   return 1;
 } else if (copy) {
  if (!argc)
   die(_("branch name required"));
  else if (argc == 1)
   copy_or_rename_branch(head, argv[0], 1, copy > 1);
  else if (argc == 2)
   copy_or_rename_branch(argv[0], argv[1], 1, copy > 1);
  else
   die(_("too many branches for a copy operation"));
 } else if (rename) {
  if (!argc)
   die(_("branch name required"));
  else if (argc == 1)
   copy_or_rename_branch(head, argv[0], 0, rename > 1);
  else if (argc == 2)
   copy_or_rename_branch(argv[0], argv[1], 0, rename > 1);
  else
   die(_("too many arguments for a rename operation"));
 } else if (new_upstream) {
  struct branch *branch = branch_get(argv[0]);

  if (argc > 1)
   die(_("too many arguments to set new upstream"));

  if (!branch) {
   if (!argc || !strcmp(argv[0], "HEAD"))
    die(_("could not set upstream of HEAD to %s when "
          "it does not point to any branch."),
        new_upstream);
   die(_("no such branch '%s'"), argv[0]);
  }

  if (!ref_exists(branch->refname))
   die(_("branch '%s' does not exist"), branch->name);





  create_branch(the_repository, branch->name, new_upstream,
         0, 0, 0, quiet, BRANCH_TRACK_OVERRIDE);
 } else if (unset_upstream) {
  struct branch *branch = branch_get(argv[0]);
  struct strbuf buf = STRBUF_INIT;

  if (argc > 1)
   die(_("too many arguments to unset upstream"));

  if (!branch) {
   if (!argc || !strcmp(argv[0], "HEAD"))
    die(_("could not unset upstream of HEAD when "
          "it does not point to any branch."));
   die(_("no such branch '%s'"), argv[0]);
  }

  if (!branch_has_merge_config(branch))
   die(_("Branch '%s' has no upstream information"), branch->name);

  strbuf_addf(&buf, "branch.%s.remote", branch->name);
  git_config_set_multivar(buf.buf, ((void*)0), ((void*)0), 1);
  strbuf_reset(&buf);
  strbuf_addf(&buf, "branch.%s.merge", branch->name);
  git_config_set_multivar(buf.buf, ((void*)0), ((void*)0), 1);
  strbuf_release(&buf);
 } else if (argc > 0 && argc <= 2) {
  if (filter.kind != FILTER_REFS_BRANCHES)
   die(_("The -a, and -r, options to 'git branch' do not take a branch name.\n"
      "Did you mean to use: -a|-r --list <pattern>?"));

  if (track == BRANCH_TRACK_OVERRIDE)
   die(_("the '--set-upstream' option is no longer supported. Please use '--track' or '--set-upstream-to' instead."));

  create_branch(the_repository,
         argv[0], (argc == 2) ? argv[1] : head,
         force, 0, reflog, quiet, track);

 } else
  usage_with_options(builtin_branch_usage, options);

 return 0;
}
