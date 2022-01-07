
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmdargs {int argc; char** argv; int argn; scalar_t__ prompt; int cx; TYPE_1__* cmd; int bundle; } ;
struct TYPE_2__ {scalar_t__ args; } ;


 int FindExec (int ,scalar_t__,int,int,char**,scalar_t__,int ) ;
 int LogWARN ;
 scalar_t__ NatCommands ;
 int log_Printf (int ,char*,...) ;
 int prompt_Printf (scalar_t__,char*,...) ;
 char tolower (char) ;

__attribute__((used)) static int
RunListCommand(struct cmdargs const *arg)
{
  const char *cmd = arg->argc ? arg->argv[arg->argc - 1] : "???";


  if (arg->cmd->args == NatCommands &&
      tolower(*arg->argv[arg->argn - 1]) == 'a') {
    if (arg->prompt)
      prompt_Printf(arg->prompt, "The alias command is deprecated\n");
    else
      log_Printf(LogWARN, "The alias command is deprecated\n");
  }


  if (arg->argc > arg->argn)
    FindExec(arg->bundle, arg->cmd->args, arg->argc, arg->argn, arg->argv,
             arg->prompt, arg->cx);
  else if (arg->prompt)
    prompt_Printf(arg->prompt, "Use `%s help' to get a list or `%s help"
                  " <option>' for syntax help.\n", cmd, cmd);
  else
    log_Printf(LogWARN, "%s command must have arguments\n", cmd);

  return 0;
}
