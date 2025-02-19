
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct rebase_options {int keep_empty; int allow_empty_message; int rebase_merges; int rebase_cousins; int autosquash; int signoff; int reschedule_failed_exec; struct object_id* squash_onto; int allow_rerere_autoupdate; int cmd; int onto_name; int switch_to; int strategy_opts; int strategy; struct object_id gpg_sign_opt; int head_name; struct object_id upstream; struct object_id restrict_revision; struct object_id onto; int flags; } ;
struct option {char member_1; char* member_2; intptr_t member_8; int * member_7; int member_6; int member_5; int member_4; struct object_id* member_3; int member_0; } ;
typedef enum action { ____Placeholder_action } action ;


 int ACTION_ADD_EXEC ;
 int ACTION_CHECK_TODO_LIST ;
 int ACTION_CONTINUE ;
 int ACTION_EDIT_TODO ;
 int ACTION_EXPAND_OIDS ;
 int ACTION_NONE ;
 int ACTION_REARRANGE_SQUASH ;
 int ACTION_SHORTEN_OIDS ;
 int ACTION_SHOW_CURRENT_PATCH ;
 int ACTION_SKIP ;
 int N_ (char*) ;
 int OPTION_CALLBACK ;
 int OPTION_STRING ;
 struct option OPT_BIT (char,char*,int *,int ,int) ;
 struct option OPT_BOOL (int ,char*,int*,int ) ;
 struct option OPT_CMDMODE (int ,char*,int*,int ,int ) ;
 struct option OPT_END () ;
 struct option OPT_NEGBIT (int ,char*,int *,int ,int ) ;
 struct option OPT_RERERE_AUTOUPDATE (int *) ;
 struct option OPT_STRING (int ,char*,int *,int ,int ) ;
 int PARSE_OPT_KEEP_ARGV0 ;
 int PARSE_OPT_NONEG ;
 int PARSE_OPT_OPTARG ;
 int REBASE_DIFFSTAT ;
 int REBASE_FORCE ;
 int REBASE_NO_QUIET ;
 struct rebase_options REBASE_OPTIONS_INIT ;
 int REBASE_VERBOSE ;
 int _ (char*) ;
 int builtin_rebase_interactive_usage ;
 int is_null_oid (struct object_id*) ;
 struct object_id null_oid ;
 int * parse_opt_commit ;
 int * parse_opt_object_id ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int run_rebase_interactive (struct rebase_options*,int) ;
 int usage_with_options (int ,struct option*) ;
 int warning (int ) ;

int cmd_rebase__interactive(int argc, const char **argv, const char *prefix)
{
 struct rebase_options opts = REBASE_OPTIONS_INIT;
 struct object_id squash_onto = null_oid;
 enum action command = ACTION_NONE;
 struct option options[] = {
  OPT_NEGBIT(0, "ff", &opts.flags, N_("allow fast-forward"),
      REBASE_FORCE),
  OPT_BOOL(0, "keep-empty", &opts.keep_empty, N_("keep empty commits")),
  OPT_BOOL(0, "allow-empty-message", &opts.allow_empty_message,
    N_("allow commits with empty messages")),
  OPT_BOOL(0, "rebase-merges", &opts.rebase_merges, N_("rebase merge commits")),
  OPT_BOOL(0, "rebase-cousins", &opts.rebase_cousins,
    N_("keep original branch points of cousins")),
  OPT_BOOL(0, "autosquash", &opts.autosquash,
    N_("move commits that begin with squash!/fixup!")),
  OPT_BOOL(0, "signoff", &opts.signoff, N_("sign commits")),
  OPT_BIT('v', "verbose", &opts.flags,
   N_("display a diffstat of what changed upstream"),
   REBASE_NO_QUIET | REBASE_VERBOSE | REBASE_DIFFSTAT),
  OPT_CMDMODE(0, "continue", &command, N_("continue rebase"),
       ACTION_CONTINUE),
  OPT_CMDMODE(0, "skip", &command, N_("skip commit"), ACTION_SKIP),
  OPT_CMDMODE(0, "edit-todo", &command, N_("edit the todo list"),
       ACTION_EDIT_TODO),
  OPT_CMDMODE(0, "show-current-patch", &command, N_("show the current patch"),
       ACTION_SHOW_CURRENT_PATCH),
  OPT_CMDMODE(0, "shorten-ids", &command,
   N_("shorten commit ids in the todo list"), ACTION_SHORTEN_OIDS),
  OPT_CMDMODE(0, "expand-ids", &command,
   N_("expand commit ids in the todo list"), ACTION_EXPAND_OIDS),
  OPT_CMDMODE(0, "check-todo-list", &command,
   N_("check the todo list"), ACTION_CHECK_TODO_LIST),
  OPT_CMDMODE(0, "rearrange-squash", &command,
   N_("rearrange fixup/squash lines"), ACTION_REARRANGE_SQUASH),
  OPT_CMDMODE(0, "add-exec-commands", &command,
   N_("insert exec commands in todo list"), ACTION_ADD_EXEC),
  { OPTION_CALLBACK, 0, "onto", &opts.onto, N_("onto"), N_("onto"),
    PARSE_OPT_NONEG, parse_opt_commit, 0 },
  { OPTION_CALLBACK, 0, "restrict-revision", &opts.restrict_revision,
    N_("restrict-revision"), N_("restrict revision"),
    PARSE_OPT_NONEG, parse_opt_commit, 0 },
  { OPTION_CALLBACK, 0, "squash-onto", &squash_onto, N_("squash-onto"),
    N_("squash onto"), PARSE_OPT_NONEG, parse_opt_object_id, 0 },
  { OPTION_CALLBACK, 0, "upstream", &opts.upstream, N_("upstream"),
    N_("the upstream commit"), PARSE_OPT_NONEG, parse_opt_commit,
    0 },
  OPT_STRING(0, "head-name", &opts.head_name, N_("head-name"), N_("head name")),
  { OPTION_STRING, 'S', "gpg-sign", &opts.gpg_sign_opt, N_("key-id"),
   N_("GPG-sign commits"),
   PARSE_OPT_OPTARG, ((void*)0), (intptr_t) "" },
  OPT_STRING(0, "strategy", &opts.strategy, N_("strategy"),
      N_("rebase strategy")),
  OPT_STRING(0, "strategy-opts", &opts.strategy_opts, N_("strategy-opts"),
      N_("strategy options")),
  OPT_STRING(0, "switch-to", &opts.switch_to, N_("switch-to"),
      N_("the branch or commit to checkout")),
  OPT_STRING(0, "onto-name", &opts.onto_name, N_("onto-name"), N_("onto name")),
  OPT_STRING(0, "cmd", &opts.cmd, N_("cmd"), N_("the command to run")),
  OPT_RERERE_AUTOUPDATE(&opts.allow_rerere_autoupdate),
  OPT_BOOL(0, "reschedule-failed-exec", &opts.reschedule_failed_exec,
    N_("automatically re-schedule any `exec` that fails")),
  OPT_END()
 };

 opts.rebase_cousins = -1;

 if (argc == 1)
  usage_with_options(builtin_rebase_interactive_usage, options);

 argc = parse_options(argc, argv, prefix, options,
   builtin_rebase_interactive_usage, PARSE_OPT_KEEP_ARGV0);

 if (!is_null_oid(&squash_onto))
  opts.squash_onto = &squash_onto;

 if (opts.rebase_cousins >= 0 && !opts.rebase_merges)
  warning(_("--[no-]rebase-cousins has no effect without "
     "--rebase-merges"));

 return !!run_rebase_interactive(&opts, command);
}
