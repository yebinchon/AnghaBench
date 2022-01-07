
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct shallow_info {int dummy; } ;
struct iterate_data {struct shallow_info* si; struct command* cmds; } ;
struct command {char* error_string; struct command* next; } ;
struct check_connected_options {int err_fd; int progress; int env; } ;
struct async {int in; int proc; } ;
typedef int muxer ;


 struct check_connected_options CHECK_CONNECTED_INIT ;
 int check_aliased_updates (struct command*) ;
 scalar_t__ check_connected (int ,struct iterate_data*,struct check_connected_options*) ;
 int copy_to_sideband ;
 int execute_commands_atomic (struct command*,struct shallow_info*) ;
 int execute_commands_non_atomic (struct command*,struct shallow_info*) ;
 int finish_async (struct async*) ;
 int free (int ) ;
 int head_name ;
 int head_name_to_free ;
 int iterate_receive_command_list ;
 int memset (struct async*,int ,int) ;
 int quiet ;
 int reject_updates_to_hidden (struct command*) ;
 int resolve_refdup (char*,int ,int *,int *) ;
 scalar_t__ run_receive_hook (struct command*,char*,int ,struct string_list const*) ;
 int set_connectivity_errors (struct command*,struct shallow_info*) ;
 scalar_t__ shallow_update ;
 int start_async (struct async*) ;
 int * tmp_objdir ;
 int tmp_objdir_env (int *) ;
 scalar_t__ tmp_objdir_migrate (int *) ;
 scalar_t__ use_atomic ;
 scalar_t__ use_sideband ;
 int warn_if_skipped_connectivity_check (struct command*,struct shallow_info*) ;

__attribute__((used)) static void execute_commands(struct command *commands,
        const char *unpacker_error,
        struct shallow_info *si,
        const struct string_list *push_options)
{
 struct check_connected_options opt = CHECK_CONNECTED_INIT;
 struct command *cmd;
 struct iterate_data data;
 struct async muxer;
 int err_fd = 0;

 if (unpacker_error) {
  for (cmd = commands; cmd; cmd = cmd->next)
   cmd->error_string = "unpacker error";
  return;
 }

 if (use_sideband) {
  memset(&muxer, 0, sizeof(muxer));
  muxer.proc = copy_to_sideband;
  muxer.in = -1;
  if (!start_async(&muxer))
   err_fd = muxer.in;

 }

 data.cmds = commands;
 data.si = si;
 opt.err_fd = err_fd;
 opt.progress = err_fd && !quiet;
 opt.env = tmp_objdir_env(tmp_objdir);
 if (check_connected(iterate_receive_command_list, &data, &opt))
  set_connectivity_errors(commands, si);

 if (use_sideband)
  finish_async(&muxer);

 reject_updates_to_hidden(commands);

 if (run_receive_hook(commands, "pre-receive", 0, push_options)) {
  for (cmd = commands; cmd; cmd = cmd->next) {
   if (!cmd->error_string)
    cmd->error_string = "pre-receive hook declined";
  }
  return;
 }





 if (tmp_objdir_migrate(tmp_objdir) < 0) {
  for (cmd = commands; cmd; cmd = cmd->next) {
   if (!cmd->error_string)
    cmd->error_string = "unable to migrate objects to permanent storage";
  }
  return;
 }
 tmp_objdir = ((void*)0);

 check_aliased_updates(commands);

 free(head_name_to_free);
 head_name = head_name_to_free = resolve_refdup("HEAD", 0, ((void*)0), ((void*)0));

 if (use_atomic)
  execute_commands_atomic(commands, si);
 else
  execute_commands_non_atomic(commands, si);

 if (shallow_update)
  warn_if_skipped_connectivity_check(commands, si);
}
