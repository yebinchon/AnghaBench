
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {scalar_t__ argc; scalar_t__ argn; scalar_t__ prompt; int cx; int argv; int bundle; } ;


 int FindExec (int ,int ,scalar_t__,scalar_t__,int ,scalar_t__,int ) ;
 int LogWARN ;
 int SetCommands ;
 int log_Printf (int ,char*) ;
 int prompt_Printf (scalar_t__,char*) ;

__attribute__((used)) static int
SetCommand(struct cmdargs const *arg)
{
  if (arg->argc > arg->argn)
    FindExec(arg->bundle, SetCommands, arg->argc, arg->argn, arg->argv,
             arg->prompt, arg->cx);
  else if (arg->prompt)
    prompt_Printf(arg->prompt, "Use `set ?' to get a list or `set ? <var>' for"
           " syntax help.\n");
  else
    log_Printf(LogWARN, "set command must have arguments\n");

  return 0;
}
