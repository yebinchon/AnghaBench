
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char member_1; char* member_2; char const* member_4; char const* member_5; intptr_t member_8; int * member_7; int member_6; int * member_3; int member_0; } ;
struct argv_array {int argv; int argc; } ;
struct am_state {scalar_t__ signoff; scalar_t__ keep; int rebasing; scalar_t__ interactive; int dir; int sign_commit; int allow_rerere_autoupdate; scalar_t__ ignore_date; scalar_t__ committer_date_is_author_date; int resolvemsg; int git_apply_opts; scalar_t__ scissors; scalar_t__ message_id; scalar_t__ utf8; int quiet; scalar_t__ threeway; } ;
typedef enum resume_mode { ____Placeholder_resume_mode } resume_mode ;


 struct argv_array ARGV_ARRAY_INIT ;
 int BUG (char*) ;
 int IDENT_STRICT ;
 scalar_t__ KEEP_NON_PATCH ;
 scalar_t__ KEEP_TRUE ;
 char const* N_ (char*) ;
 int OPTION_STRING ;
 struct option OPT_BOOL (char,char*,scalar_t__*,char const*) ;
 struct option OPT_CALLBACK (int ,char*,int*,char const*,char const*,int ) ;
 struct option OPT_CMDMODE (char,char*,int*,char const*,int) ;
 struct option OPT_END () ;
 struct option OPT_HIDDEN_BOOL (char,char*,int*,char const*) ;
 struct option OPT_PASSTHRU_ARGV (char,char*,int *,char const*,char const*,int ) ;
 struct option OPT_RERERE_AUTOUPDATE (int *) ;
 struct option OPT_SET_INT (char,char*,scalar_t__*,char const*,scalar_t__) ;
 struct option OPT_SET_INT_F (int ,char*,int*,char const*,int,int ) ;
 struct option OPT_STRING (int ,char*,int *,int *,char const*) ;
 struct option OPT__QUIET (int *,char const*) ;
 int PARSE_OPT_NOARG ;
 int PARSE_OPT_NONEG ;
 int PARSE_OPT_OPTARG ;
 int PATCH_FORMAT_UNKNOWN ;







 scalar_t__ SIGNOFF_EXPLICIT ;
 int _ (char*) ;
 int am_abort (struct am_state*) ;
 int am_append_signoff (struct am_state*) ;
 int am_destroy (struct am_state*) ;
 int am_in_progress (struct am_state*) ;
 int am_load (struct am_state*) ;
 int am_rerere_clear () ;
 int am_resolve (struct am_state*) ;
 int am_run (struct am_state*,int) ;
 int am_setup (struct am_state*,int,int ,int) ;
 int am_skip (struct am_state*) ;
 int am_state_init (struct am_state*) ;
 int am_state_release (struct am_state*) ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,char const*) ;
 int die (int ,...) ;
 scalar_t__ file_exists (int ) ;
 int fprintf_ln (int ,int ) ;
 int git_am_config ;
 int git_committer_info (int ) ;
 int git_config (int ,int *) ;
 scalar_t__ is_absolute_path (char const*) ;
 int isatty (int ) ;
 char const* mkpath (char*,char const*,char const*) ;
 int parse_opt_patchformat ;
 int parse_options (int,char const**,char const*,struct option*,char const* const*,int ) ;
 scalar_t__ repo_read_index_preload (int ,int *,int ) ;
 int show_patch (struct am_state*) ;
 int stderr ;
 int strcmp (char const*,char*) ;
 int the_repository ;
 int usage_with_options (char const* const*,struct option*) ;

int cmd_am(int argc, const char **argv, const char *prefix)
{
 struct am_state state;
 int binary = -1;
 int keep_cr = -1;
 int patch_format = PATCH_FORMAT_UNKNOWN;
 enum resume_mode resume = 132;
 int in_progress;
 int ret = 0;

 const char * const usage[] = {
  N_("git am [<options>] [(<mbox> | <Maildir>)...]"),
  N_("git am [<options>] (--continue | --skip | --abort)"),
  ((void*)0)
 };

 struct option options[] = {
  OPT_BOOL('i', "interactive", &state.interactive,
   N_("run interactively")),
  OPT_HIDDEN_BOOL('b', "binary", &binary,
   N_("historical option -- no-op")),
  OPT_BOOL('3', "3way", &state.threeway,
   N_("allow fall back on 3way merging if needed")),
  OPT__QUIET(&state.quiet, N_("be quiet")),
  OPT_SET_INT('s', "signoff", &state.signoff,
   N_("add a Signed-off-by line to the commit message"),
   SIGNOFF_EXPLICIT),
  OPT_BOOL('u', "utf8", &state.utf8,
   N_("recode into utf8 (default)")),
  OPT_SET_INT('k', "keep", &state.keep,
   N_("pass -k flag to git-mailinfo"), KEEP_TRUE),
  OPT_SET_INT(0, "keep-non-patch", &state.keep,
   N_("pass -b flag to git-mailinfo"), KEEP_NON_PATCH),
  OPT_BOOL('m', "message-id", &state.message_id,
   N_("pass -m flag to git-mailinfo")),
  OPT_SET_INT_F(0, "keep-cr", &keep_cr,
   N_("pass --keep-cr flag to git-mailsplit for mbox format"),
   1, PARSE_OPT_NONEG),
  OPT_SET_INT_F(0, "no-keep-cr", &keep_cr,
   N_("do not pass --keep-cr flag to git-mailsplit independent of am.keepcr"),
   0, PARSE_OPT_NONEG),
  OPT_BOOL('c', "scissors", &state.scissors,
   N_("strip everything before a scissors line")),
  OPT_PASSTHRU_ARGV(0, "whitespace", &state.git_apply_opts, N_("action"),
   N_("pass it through git-apply"),
   0),
  OPT_PASSTHRU_ARGV(0, "ignore-space-change", &state.git_apply_opts, ((void*)0),
   N_("pass it through git-apply"),
   PARSE_OPT_NOARG),
  OPT_PASSTHRU_ARGV(0, "ignore-whitespace", &state.git_apply_opts, ((void*)0),
   N_("pass it through git-apply"),
   PARSE_OPT_NOARG),
  OPT_PASSTHRU_ARGV(0, "directory", &state.git_apply_opts, N_("root"),
   N_("pass it through git-apply"),
   0),
  OPT_PASSTHRU_ARGV(0, "exclude", &state.git_apply_opts, N_("path"),
   N_("pass it through git-apply"),
   0),
  OPT_PASSTHRU_ARGV(0, "include", &state.git_apply_opts, N_("path"),
   N_("pass it through git-apply"),
   0),
  OPT_PASSTHRU_ARGV('C', ((void*)0), &state.git_apply_opts, N_("n"),
   N_("pass it through git-apply"),
   0),
  OPT_PASSTHRU_ARGV('p', ((void*)0), &state.git_apply_opts, N_("num"),
   N_("pass it through git-apply"),
   0),
  OPT_CALLBACK(0, "patch-format", &patch_format, N_("format"),
   N_("format the patch(es) are in"),
   parse_opt_patchformat),
  OPT_PASSTHRU_ARGV(0, "reject", &state.git_apply_opts, ((void*)0),
   N_("pass it through git-apply"),
   PARSE_OPT_NOARG),
  OPT_STRING(0, "resolvemsg", &state.resolvemsg, ((void*)0),
   N_("override error message when patch failure occurs")),
  OPT_CMDMODE(0, "continue", &resume,
   N_("continue applying patches after resolving a conflict"),
   130),
  OPT_CMDMODE('r', "resolved", &resume,
   N_("synonyms for --continue"),
   130),
  OPT_CMDMODE(0, "skip", &resume,
   N_("skip the current patch"),
   128),
  OPT_CMDMODE(0, "abort", &resume,
   N_("restore the original branch and abort the patching operation."),
   134),
  OPT_CMDMODE(0, "quit", &resume,
   N_("abort the patching operation but keep HEAD where it is."),
   131),
  OPT_CMDMODE(0, "show-current-patch", &resume,
   N_("show the patch being applied."),
   129),
  OPT_BOOL(0, "committer-date-is-author-date",
   &state.committer_date_is_author_date,
   N_("lie about committer date")),
  OPT_BOOL(0, "ignore-date", &state.ignore_date,
   N_("use current timestamp for author date")),
  OPT_RERERE_AUTOUPDATE(&state.allow_rerere_autoupdate),
  { OPTION_STRING, 'S', "gpg-sign", &state.sign_commit, N_("key-id"),
    N_("GPG-sign commits"),
    PARSE_OPT_OPTARG, ((void*)0), (intptr_t) "" },
  OPT_HIDDEN_BOOL(0, "rebasing", &state.rebasing,
   N_("(internal use for git-rebase)")),
  OPT_END()
 };

 if (argc == 2 && !strcmp(argv[1], "-h"))
  usage_with_options(usage, options);

 git_config(git_am_config, ((void*)0));

 am_state_init(&state);

 in_progress = am_in_progress(&state);
 if (in_progress)
  am_load(&state);

 argc = parse_options(argc, argv, prefix, options, usage, 0);

 if (binary >= 0)
  fprintf_ln(stderr, _("The -b/--binary option has been a no-op for long time, and\n"
    "it will be removed. Please do not use it anymore."));


 git_committer_info(IDENT_STRICT);

 if (repo_read_index_preload(the_repository, ((void*)0), 0) < 0)
  die(_("failed to read the index"));

 if (in_progress) {
  if (argc || (resume == 132 && !isatty(0)))
   die(_("previous rebase directory %s still exists but mbox given."),
    state.dir);

  if (resume == 132)
   resume = 133;

  if (state.signoff == SIGNOFF_EXPLICIT)
   am_append_signoff(&state);
 } else {
  struct argv_array paths = ARGV_ARRAY_INIT;
  int i;






  if (file_exists(state.dir) && !state.rebasing) {
   if (resume == 134 || resume == 131) {
    am_destroy(&state);
    am_state_release(&state);
    return 0;
   }

   die(_("Stray %s directory found.\n"
    "Use \"git am --abort\" to remove it."),
    state.dir);
  }

  if (resume)
   die(_("Resolve operation not in progress, we are not resuming."));

  for (i = 0; i < argc; i++) {
   if (is_absolute_path(argv[i]) || !prefix)
    argv_array_push(&paths, argv[i]);
   else
    argv_array_push(&paths, mkpath("%s/%s", prefix, argv[i]));
  }

  if (state.interactive && !paths.argc)
   die(_("interactive mode requires patches on the command line"));

  am_setup(&state, patch_format, paths.argv, keep_cr);

  argv_array_clear(&paths);
 }

 switch (resume) {
 case 132:
  am_run(&state, 0);
  break;
 case 133:
  am_run(&state, 1);
  break;
 case 130:
  am_resolve(&state);
  break;
 case 128:
  am_skip(&state);
  break;
 case 134:
  am_abort(&state);
  break;
 case 131:
  am_rerere_clear();
  am_destroy(&state);
  break;
 case 129:
  ret = show_patch(&state);
  break;
 default:
  BUG("invalid resume value");
 }

 am_state_release(&state);

 return ret;
}
