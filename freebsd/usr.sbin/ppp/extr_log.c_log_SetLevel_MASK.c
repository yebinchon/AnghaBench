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
struct cmdargs {int argc; int argn; char** argv; TYPE_1__* prompt; } ;
struct TYPE_2__ {int /*<<< orphan*/  logmask; } ;

/* Variables and functions */
 int LogMAX ; 
 int LogMIN ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

int
FUNC9(struct cmdargs const *arg)
{
  int i, res, argc, local;
  char const *const *argv, *argp;

  argc = arg->argc - arg->argn;
  argv = arg->argv + arg->argn;
  res = 0;

  if (argc == 0 || FUNC8(argv[0], "local"))
    local = 0;
  else {
    if (arg->prompt == NULL) {
      FUNC7(LogWARN, "set log local: Only available on the"
                 " command line\n");
      return 1;
    }
    argc--;
    argv++;
    local = 1;
  }

  if (argc == 0 || (argv[0][0] != '+' && argv[0][0] != '-')) {
    if (local)
      FUNC2(&arg->prompt->logmask);
    else
      FUNC1();
  }

  while (argc--) {
    argp = **argv == '+' || **argv == '-' ? *argv + 1 : *argv;
    /* Special case 'all' */
    if (FUNC8(argp, "all") == 0) {
        if (**argv == '-') {
          if (local)
            for (i = LogMIN; i <= LogMAX; i++)
              FUNC3(i, &arg->prompt->logmask);
          else
            for (i = LogMIN; i <= LogMAX; i++)
              FUNC0(i);
        } else if (local)
          for (i = LogMIN; i <= LogMAX; i++)
            FUNC5(i, &arg->prompt->logmask);
        else
          for (i = LogMIN; i <= LogMAX; i++)
            FUNC4(i);
        argv++;
        continue;
    }
    for (i = LogMIN; i <= LogMAX; i++)
      if (FUNC8(argp, FUNC6(i)) == 0) {
	if (**argv == '-') {
          if (local)
            FUNC3(i, &arg->prompt->logmask);
          else
	    FUNC0(i);
	} else if (local)
          FUNC5(i, &arg->prompt->logmask);
        else
          FUNC4(i);
	break;
      }
    if (i > LogMAX) {
      FUNC7(LogWARN, "%s: Invalid log value\n", argp);
      res = -1;
    }
    argv++;
  }
  return res;
}