
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct command {char const* ref_name; scalar_t__ did_not_exist; scalar_t__ error_string; struct command* next; } ;
struct TYPE_2__ {int argc; } ;
struct child_process {int no_stdin; int stdout_to_stderr; int err; char* trace2_hook_name; TYPE_1__ args; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int argv_array_push (TYPE_1__*,char const*) ;
 int copy_to_sideband (int,int,int *) ;
 char* find_hook (char*) ;
 int finish_command (struct child_process*) ;
 int start_command (struct child_process*) ;
 scalar_t__ use_sideband ;

__attribute__((used)) static void run_update_post_hook(struct command *commands)
{
 struct command *cmd;
 struct child_process proc = CHILD_PROCESS_INIT;
 const char *hook;

 hook = find_hook("post-update");
 if (!hook)
  return;

 for (cmd = commands; cmd; cmd = cmd->next) {
  if (cmd->error_string || cmd->did_not_exist)
   continue;
  if (!proc.args.argc)
   argv_array_push(&proc.args, hook);
  argv_array_push(&proc.args, cmd->ref_name);
 }
 if (!proc.args.argc)
  return;

 proc.no_stdin = 1;
 proc.stdout_to_stderr = 1;
 proc.err = use_sideband ? -1 : 0;
 proc.trace2_hook_name = "post-update";

 if (!start_command(&proc)) {
  if (use_sideband)
   copy_to_sideband(proc.err, -1, ((void*)0));
  finish_command(&proc);
 }
}
