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
struct cmdargs {int argn; int argc; int /*<<< orphan*/  bundle; int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,char const* const*) ; 
 int LINE_LEN ; 
 int /*<<< orphan*/  LogLOG ; 
 int /*<<< orphan*/  LogWARN ; 
 int MAXARGS ; 
 int /*<<< orphan*/  FUNC1 (char**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC5(struct cmdargs const *arg)
{
  char buf[LINE_LEN];

  if (arg->argn < arg->argc) {
    char *argv[MAXARGS];
    int argc = arg->argc - arg->argn;

    if (argc >= (int)(sizeof argv / sizeof argv[0])) {
      argc = sizeof argv / sizeof argv[0] - 1;
      FUNC4(LogWARN, "Truncating log command to %d args\n", argc);
    }
    FUNC1(argv, argc, arg->argv + arg->argn, arg->bundle, 1, FUNC3());
    FUNC0(buf, sizeof buf, argc, (const char *const *)argv);
    FUNC4(LogLOG, "%s\n", buf);
    FUNC2(argc, argv);
    return 0;
  }

  return -1;
}