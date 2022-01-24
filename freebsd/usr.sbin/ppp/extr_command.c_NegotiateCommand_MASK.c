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
struct cmdargs {int argc; int argn; char** argv; scalar_t__ prompt; int /*<<< orphan*/  cx; int /*<<< orphan*/  bundle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int,char const**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogWARN ; 
 unsigned int NEG_HISMASK ; 
 scalar_t__ NEG_OPT_MAX ; 
 scalar_t__ NegotiateCommands ; 
 char* FUNC1 (char*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,char*) ; 

__attribute__((used)) static int
FUNC4(struct cmdargs const *arg)
{
  if (arg->argc > arg->argn) {
    char const *argv[3];
    unsigned keep, add;
    int n;

    if ((argv[0] = FUNC1(arg->argv[arg->argn-1], &keep, &add)) == NULL)
      return -1;
    argv[2] = NULL;

    for (n = arg->argn; n < arg->argc; n++) {
      argv[1] = arg->argv[n];
      FUNC0(arg->bundle, NegotiateCommands + (keep == NEG_HISMASK ?
               0 : NEG_OPT_MAX), 2, 1, argv, arg->prompt, arg->cx);
    }
  } else if (arg->prompt)
    FUNC3(arg->prompt, "Use `%s ?' to get a list.\n",
	    arg->argv[arg->argn-1]);
  else
    FUNC2(LogWARN, "%s command must have arguments\n",
              arg->argv[arg->argn] );

  return 0;
}