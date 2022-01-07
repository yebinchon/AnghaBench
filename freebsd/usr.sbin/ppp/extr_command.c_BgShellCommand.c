
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {scalar_t__ argc; scalar_t__ argn; } ;


 int ShellCommand (struct cmdargs const*,int) ;

__attribute__((used)) static int
BgShellCommand(struct cmdargs const *arg)
{
  if (arg->argc == arg->argn)
    return -1;
  return ShellCommand(arg, 1);
}
