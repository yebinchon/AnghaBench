
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {int argc; int argn; char** argv; scalar_t__ prompt; int cx; int bundle; } ;


 int FindExec (int ,scalar_t__,int,int,char const**,scalar_t__,int ) ;
 int LogWARN ;
 unsigned int NEG_HISMASK ;
 scalar_t__ NEG_OPT_MAX ;
 scalar_t__ NegotiateCommands ;
 char* ident_cmd (char*,unsigned int*,unsigned int*) ;
 int log_Printf (int ,char*,char*) ;
 int prompt_Printf (scalar_t__,char*,char*) ;

__attribute__((used)) static int
NegotiateCommand(struct cmdargs const *arg)
{
  if (arg->argc > arg->argn) {
    char const *argv[3];
    unsigned keep, add;
    int n;

    if ((argv[0] = ident_cmd(arg->argv[arg->argn-1], &keep, &add)) == ((void*)0))
      return -1;
    argv[2] = ((void*)0);

    for (n = arg->argn; n < arg->argc; n++) {
      argv[1] = arg->argv[n];
      FindExec(arg->bundle, NegotiateCommands + (keep == NEG_HISMASK ?
               0 : NEG_OPT_MAX), 2, 1, argv, arg->prompt, arg->cx);
    }
  } else if (arg->prompt)
    prompt_Printf(arg->prompt, "Use `%s ?' to get a list.\n",
     arg->argv[arg->argn-1]);
  else
    log_Printf(LogWARN, "%s command must have arguments\n",
              arg->argv[arg->argn] );

  return 0;
}
