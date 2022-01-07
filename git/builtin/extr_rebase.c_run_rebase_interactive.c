
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct replay_opts {int dummy; } ;
struct rebase_options {scalar_t__ rebase_cousins; int cmd; int upstream; int onto; scalar_t__ root_with_onto; scalar_t__ rebase_merges; scalar_t__ keep_empty; } ;
struct child_process {int git_cmd; int args; } ;
typedef enum action { ____Placeholder_action } action ;
 int BUG (char*,int) ;
 struct child_process CHILD_PROCESS_INIT ;
 struct string_list STRING_LIST_INIT_DUP ;
 unsigned int TODO_LIST_ABBREVIATE_CMDS ;
 unsigned int TODO_LIST_KEEP_EMPTY ;
 unsigned int TODO_LIST_REBASE_COUSINS ;
 unsigned int TODO_LIST_REBASE_MERGES ;
 unsigned int TODO_LIST_ROOT_WITH_ONTO ;
 unsigned int TODO_LIST_SHORTEN_IDS ;
 int _ (char*) ;
 int add_exec_commands (struct string_list*) ;
 int argv_array_pushl (int *,char*,char*,char*,int *) ;
 int check_todo_list_from_file (int ) ;
 int die (int ) ;
 int do_interactive_rebase (struct rebase_options*,unsigned int) ;
 int edit_todo_file (unsigned int) ;
 struct replay_opts get_replay_opts (struct rebase_options*) ;
 int git_config_get_bool (char*,int*) ;
 int rearrange_squash_in_todo_file () ;
 int rerere_clear (int ,struct string_list*) ;
 int run_command (struct child_process*) ;
 int sequencer_continue (int ,struct replay_opts*) ;
 int split_exec_commands (int ,struct string_list*) ;
 int string_list_clear (struct string_list*,int ) ;
 int the_repository ;
 int transform_todo_file (unsigned int) ;

__attribute__((used)) static int run_rebase_interactive(struct rebase_options *opts,
      enum action command)
{
 unsigned flags = 0;
 int abbreviate_commands = 0, ret = 0;

 git_config_get_bool("rebase.abbreviatecommands", &abbreviate_commands);

 flags |= opts->keep_empty ? TODO_LIST_KEEP_EMPTY : 0;
 flags |= abbreviate_commands ? TODO_LIST_ABBREVIATE_CMDS : 0;
 flags |= opts->rebase_merges ? TODO_LIST_REBASE_MERGES : 0;
 flags |= opts->rebase_cousins > 0 ? TODO_LIST_REBASE_COUSINS : 0;
 flags |= opts->root_with_onto ? TODO_LIST_ROOT_WITH_ONTO : 0;
 flags |= command == 130 ? TODO_LIST_SHORTEN_IDS : 0;

 switch (command) {
 case 132: {
  if (!opts->onto && !opts->upstream)
   die(_("a base commit must be provided with --upstream or --onto"));

  ret = do_interactive_rebase(opts, flags);
  break;
 }
 case 128: {
  struct string_list merge_rr = STRING_LIST_INIT_DUP;

  rerere_clear(the_repository, &merge_rr);
 }

 case 135: {
  struct replay_opts replay_opts = get_replay_opts(opts);

  ret = sequencer_continue(the_repository, &replay_opts);
  break;
 }
 case 134:
  ret = edit_todo_file(flags);
  break;
 case 129: {
  struct child_process cmd = CHILD_PROCESS_INIT;

  cmd.git_cmd = 1;
  argv_array_pushl(&cmd.args, "show", "REBASE_HEAD", "--", ((void*)0));
  ret = run_command(&cmd);

  break;
 }
 case 130:
 case 133:
  ret = transform_todo_file(flags);
  break;
 case 136:
  ret = check_todo_list_from_file(the_repository);
  break;
 case 131:
  ret = rearrange_squash_in_todo_file();
  break;
 case 137: {
  struct string_list commands = STRING_LIST_INIT_DUP;

  split_exec_commands(opts->cmd, &commands);
  ret = add_exec_commands(&commands);
  string_list_clear(&commands, 0);
  break;
 }
 default:
  BUG("invalid command '%d'", command);
 }

 return ret;
}
