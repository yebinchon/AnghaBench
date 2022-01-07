
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {scalar_t__ argc; scalar_t__ argn; int prompt; int cx; int argv; int bundle; } ;


 int FindExec (int ,int ,scalar_t__,scalar_t__,int ,int ,int ) ;
 int LogWARN ;
 int ShowCommands ;
 int log_Printf (int ,char*) ;
 int prompt_Printf (int ,char*) ;

__attribute__((used)) static int
ShowCommand(struct cmdargs const *arg)
{
  if (!arg->prompt)
    log_Printf(LogWARN, "show: Cannot show without a prompt\n");
  else if (arg->argc > arg->argn)
    FindExec(arg->bundle, ShowCommands, arg->argc, arg->argn, arg->argv,
             arg->prompt, arg->cx);
  else
    prompt_Printf(arg->prompt, "Use ``show ?'' to get a list.\n");

  return 0;
}
