
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {int dummy; } ;
struct TYPE_2__ {int have_repository; } ;


 char* GIT_DIR_ENVIRONMENT ;
 char* GIT_WORK_TREE_ENVIRONMENT ;
 int * N_ (char*) ;
 struct option OPT_ARGUMENT (char*,int*,int *) ;
 struct option OPT_BOOL (char,char*,int*,int *) ;
 struct option OPT_END () ;
 struct option OPT_SET_INT_F (char,char*,int*,int *,int,int) ;
 struct option OPT_STRING (char,char*,char**,int *,int *) ;
 int PARSE_OPT_HIDDEN ;
 int PARSE_OPT_KEEP_DASHDASH ;
 int PARSE_OPT_KEEP_UNKNOWN ;
 int PARSE_OPT_NONEG ;
 int _ (char*) ;
 char* absolute_path (int ) ;
 int builtin_difftool_usage ;
 int die (int ) ;
 int difftool_config ;
 int get_git_dir () ;
 int get_git_work_tree () ;
 int git_config (int ,int *) ;
 int has_symlinks ;
 int parse_options (int,char const**,char const*,struct option*,int ,int) ;
 int print_tool_help () ;
 int run_dir_diff (char*,int,char const*,int,char const**) ;
 int run_file_diff (int,char const*,int,char const**) ;
 int setenv (char*,char*,int) ;
 int setup_work_tree () ;
 TYPE_1__* startup_info ;
 int trust_exit_code ;

int cmd_difftool(int argc, const char **argv, const char *prefix)
{
 int use_gui_tool = 0, dir_diff = 0, prompt = -1, symlinks = 0,
     tool_help = 0, no_index = 0;
 static char *difftool_cmd = ((void*)0), *extcmd = ((void*)0);
 struct option builtin_difftool_options[] = {
  OPT_BOOL('g', "gui", &use_gui_tool,
    N_("use `diff.guitool` instead of `diff.tool`")),
  OPT_BOOL('d', "dir-diff", &dir_diff,
    N_("perform a full-directory diff")),
  OPT_SET_INT_F('y', "no-prompt", &prompt,
   N_("do not prompt before launching a diff tool"),
   0, PARSE_OPT_NONEG),
  OPT_SET_INT_F(0, "prompt", &prompt, ((void*)0),
   1, PARSE_OPT_NONEG | PARSE_OPT_HIDDEN),
  OPT_BOOL(0, "symlinks", &symlinks,
    N_("use symlinks in dir-diff mode")),
  OPT_STRING('t', "tool", &difftool_cmd, N_("tool"),
      N_("use the specified diff tool")),
  OPT_BOOL(0, "tool-help", &tool_help,
    N_("print a list of diff tools that may be used with "
       "`--tool`")),
  OPT_BOOL(0, "trust-exit-code", &trust_exit_code,
    N_("make 'git-difftool' exit when an invoked diff "
       "tool returns a non - zero exit code")),
  OPT_STRING('x', "extcmd", &extcmd, N_("command"),
      N_("specify a custom command for viewing diffs")),
  OPT_ARGUMENT("no-index", &no_index, N_("passed to `diff`")),
  OPT_END()
 };

 git_config(difftool_config, ((void*)0));
 symlinks = has_symlinks;

 argc = parse_options(argc, argv, prefix, builtin_difftool_options,
        builtin_difftool_usage, PARSE_OPT_KEEP_UNKNOWN |
        PARSE_OPT_KEEP_DASHDASH);

 if (tool_help)
  return print_tool_help();

 if (!no_index && !startup_info->have_repository)
  die(_("difftool requires worktree or --no-index"));

 if (!no_index){
  setup_work_tree();
  setenv(GIT_DIR_ENVIRONMENT, absolute_path(get_git_dir()), 1);
  setenv(GIT_WORK_TREE_ENVIRONMENT, absolute_path(get_git_work_tree()), 1);
 } else if (dir_diff)
  die(_("--dir-diff is incompatible with --no-index"));

 if (use_gui_tool + !!difftool_cmd + !!extcmd > 1)
  die(_("--gui, --tool and --extcmd are mutually exclusive"));

 if (use_gui_tool)
  setenv("GIT_MERGETOOL_GUI", "true", 1);
 else if (difftool_cmd) {
  if (*difftool_cmd)
   setenv("GIT_DIFF_TOOL", difftool_cmd, 1);
  else
   die(_("no <tool> given for --tool=<tool>"));
 }

 if (extcmd) {
  if (*extcmd)
   setenv("GIT_DIFFTOOL_EXTCMD", extcmd, 1);
  else
   die(_("no <cmd> given for --extcmd=<cmd>"));
 }

 setenv("GIT_DIFFTOOL_TRUST_EXIT_CODE",
        trust_exit_code ? "true" : "false", 1);







 if (dir_diff)
  return run_dir_diff(extcmd, symlinks, prefix, argc, argv);
 return run_file_diff(prompt, prefix, argc, argv);
}
