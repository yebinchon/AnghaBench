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
struct cmdtab {char* name; char* alias; int lauth; char* helpmes; scalar_t__ func; int /*<<< orphan*/  syntax; } ;
struct cmdargs {size_t argc; size_t argn; TYPE_1__* prompt; struct cmdtab* cmdtab; int /*<<< orphan*/ * argv; } ;
struct TYPE_2__ {int auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 char* FUNC2 (struct cmdtab const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct cmdargs const *arg)
{
  struct cmdtab const *cmd;
  int n, cmax, dmax, cols, cxlen;
  const char *cx;

  if (!arg->prompt) {
    FUNC0(LogWARN, "help: Cannot help without a prompt\n");
    return 0;
  }

  if (arg->argc > arg->argn) {
    for (cmd = arg->cmdtab; cmd->name || cmd->alias; cmd++)
      if ((cmd->lauth & arg->prompt->auth) &&
          ((cmd->name && !FUNC3(cmd->name, arg->argv[arg->argn])) ||
           (cmd->alias && !FUNC3(cmd->alias, arg->argv[arg->argn])))) {
	FUNC1(arg->prompt, "%s %s\n", cmd->syntax, FUNC2(cmd));
	return 0;
      }
    return -1;
  }

  cmax = dmax = 0;
  for (cmd = arg->cmdtab; cmd->func; cmd++)
    if (cmd->name && (cmd->lauth & arg->prompt->auth)) {
      if ((n = FUNC4(cmd->name) + FUNC4(FUNC2(cmd))) > cmax)
        cmax = n;
      if ((n = FUNC4(cmd->helpmes)) > dmax)
        dmax = n;
    }

  cols = 80 / (dmax + cmax + 3);
  n = 0;
  FUNC1(arg->prompt, "(o) = Optional context,"
                " (c) = Context required\n");
  for (cmd = arg->cmdtab; cmd->func; cmd++)
    if (cmd->name && (cmd->lauth & arg->prompt->auth)) {
      cx = FUNC2(cmd);
      cxlen = cmax - FUNC4(cmd->name);
      if (n % cols != 0)
        FUNC1(arg->prompt, " ");
      FUNC1(arg->prompt, "%s%-*.*s: %-*.*s",
              cmd->name, cxlen, cxlen, cx, dmax, dmax, cmd->helpmes);
      if (++n % cols == 0)
        FUNC1(arg->prompt, "\n");
    }
  if (n % cols != 0)
    FUNC1(arg->prompt, "\n");

  return 0;
}