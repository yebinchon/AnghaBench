
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {int dummy; } ;


 int ShellCommand (struct cmdargs const*,int ) ;

__attribute__((used)) static int
FgShellCommand(struct cmdargs const *arg)
{
  return ShellCommand(arg, 0);
}
