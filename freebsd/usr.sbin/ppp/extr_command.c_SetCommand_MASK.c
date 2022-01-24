#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cmdargs {scalar_t__ argc; scalar_t__ argn; scalar_t__ prompt; int /*<<< orphan*/  cx; int /*<<< orphan*/  argv; int /*<<< orphan*/  bundle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  SetCommands ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 

__attribute__((used)) static int
FUNC3(struct cmdargs const *arg)
{
  if (arg->argc > arg->argn)
    FUNC0(arg->bundle, SetCommands, arg->argc, arg->argn, arg->argv,
             arg->prompt, arg->cx);
  else if (arg->prompt)
    FUNC2(arg->prompt, "Use `set ?' to get a list or `set ? <var>' for"
	          " syntax help.\n");
  else
    FUNC1(LogWARN, "set command must have arguments\n");

  return 0;
}