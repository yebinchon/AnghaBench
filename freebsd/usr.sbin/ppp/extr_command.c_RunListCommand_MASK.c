#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cmdargs {int argc; char** argv; int argn; scalar_t__ prompt; int /*<<< orphan*/  cx; TYPE_1__* cmd; int /*<<< orphan*/  bundle; } ;
struct TYPE_2__ {scalar_t__ args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int,char**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogWARN ; 
 scalar_t__ NatCommands ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,...) ; 
 char FUNC3 (char) ; 

__attribute__((used)) static int
FUNC4(struct cmdargs const *arg)
{
  const char *cmd = arg->argc ? arg->argv[arg->argc - 1] : "???";

#ifndef NONAT
  if (arg->cmd->args == NatCommands &&
      FUNC3(*arg->argv[arg->argn - 1]) == 'a') {
    if (arg->prompt)
      FUNC2(arg->prompt, "The alias command is deprecated\n");
    else
      FUNC1(LogWARN, "The alias command is deprecated\n");
  }
#endif

  if (arg->argc > arg->argn)
    FUNC0(arg->bundle, arg->cmd->args, arg->argc, arg->argn, arg->argv,
             arg->prompt, arg->cx);
  else if (arg->prompt)
    FUNC2(arg->prompt, "Use `%s help' to get a list or `%s help"
                  " <option>' for syntax help.\n", cmd, cmd);
  else
    FUNC1(LogWARN, "%s command must have arguments\n", cmd);

  return 0;
}