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
struct switches {int mode; int unit; int nat; int quiet; int fg; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_START ; 
 int /*<<< orphan*/  LogWARN ; 
 int FUNC0 (char*) ; 
#define  PHYS_ALL 129 
 scalar_t__ PHYS_AUTO ; 
 int PHYS_FOREGROUND ; 
 int PHYS_INTERACTIVE ; 
#define  PHYS_NONE 128 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct switches*,char,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC9(int argc, char **argv, struct switches *sw)
{
  int optc, newmode, arg;
  char *cp;

  optc = 0;
  FUNC6(sw, '\0', sizeof *sw);
  sw->mode = PHYS_INTERACTIVE;
  sw->unit = -1;

  for (arg = 1; arg < argc && *argv[arg] == '-'; arg++, optc++) {
    cp = argv[arg] + 1;
    newmode = FUNC0(cp);
    switch (newmode) {
      case PHYS_NONE:
        if (FUNC7(cp, "nat") == 0) {
#ifdef NONAT
          log_Printf(LogWARN, "%s ignored: NAT is compiled out\n", argv[arg]);
#else
          sw->nat = 1;
#endif
          optc--;			/* this option isn't exclusive */
        } else if (FUNC7(cp, "alias") == 0) {
#ifdef NONAT
          log_Printf(LogWARN, "%s ignored: NAT is compiled out\n", argv[arg]);
          fprintf(stderr, "%s ignored: NAT is compiled out\n", argv[arg]);
#else
          FUNC5(LogWARN, "%s is deprecated\n", argv[arg]);
          FUNC4(stderr, "%s is deprecated\n", argv[arg]);
          sw->nat = 1;
#endif
          optc--;			/* this option isn't exclusive */
        } else if (FUNC8(cp, "unit", 4) == 0) {
          optc--;			/* this option isn't exclusive */
          if (cp[4] == '\0') {
            optc--;			/* nor is the argument */
            if (++arg == argc) {
              FUNC4(stderr, "-unit: Expected unit number\n");
              FUNC1();
            } else
              sw->unit = FUNC2(argv[arg]);
          } else
            sw->unit = FUNC2(cp + 4);
        } else if (FUNC7(cp, "quiet") == 0) {
          sw->quiet = 1;
          optc--;			/* this option isn't exclusive */
        } else
          FUNC1();
        break;

      case PHYS_ALL:
        FUNC1();
        break;

      default:
        sw->mode = newmode;
        if (newmode == PHYS_FOREGROUND)
          sw->fg = 1;
    }
  }

  if (optc > 1) {
    FUNC4(stderr, "You may specify only one mode.\n");
    FUNC3(EX_START);
  }

  if (sw->mode == PHYS_AUTO && arg == argc) {
    FUNC4(stderr, "A system must be specified in auto mode.\n");
    FUNC3(EX_START);
  }

  return arg;		/* Don't SetLabel yet ! */
}