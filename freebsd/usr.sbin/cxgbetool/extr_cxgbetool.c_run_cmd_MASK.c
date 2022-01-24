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

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,char const**) ; 
 int FUNC1 (int,char const**) ; 
 int FUNC2 (int,char const**) ; 
 int FUNC3 (int,char const**,int) ; 
 int FUNC4 (int,char const**) ; 
 int FUNC5 (int,char const**) ; 
 int FUNC6 (int,char const**) ; 
 int FUNC7 (int,char const**) ; 
 int FUNC8 (int,char const**) ; 
 int FUNC9 (int,char const**) ; 
 int FUNC10 (int,char const**) ; 
 int FUNC11 (int,char const**) ; 
 int FUNC12 (int,char const**) ; 
 int FUNC13 (int,char const**) ; 
 int FUNC14 (int,char const**,int) ; 
 int FUNC15 (int,char const**) ; 
 int FUNC16 (int,char const**) ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 
 int FUNC18 (int,char const**) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*) ; 

__attribute__((used)) static int
FUNC20(int argc, const char *argv[])
{
	int rc = -1;
	const char *cmd = argv[0];

	/* command */
	argc--;
	argv++;

	if (!FUNC17(cmd, "reg") || !FUNC17(cmd, "reg32"))
		rc = FUNC14(argc, argv, 4);
	else if (!FUNC17(cmd, "reg64"))
		rc = FUNC14(argc, argv, 8);
	else if (!FUNC17(cmd, "regdump"))
		rc = FUNC1(argc, argv);
	else if (!FUNC17(cmd, "filter"))
		rc = FUNC3(argc, argv, 0);
	else if (!FUNC17(cmd, "context"))
		rc = FUNC4(argc, argv);
	else if (!FUNC17(cmd, "loadfw"))
		rc = FUNC9(argc, argv);
	else if (!FUNC17(cmd, "memdump"))
		rc = FUNC10(argc, argv);
	else if (!FUNC17(cmd, "tcb"))
		rc = FUNC13(argc, argv);
	else if (!FUNC17(cmd, "i2c"))
		rc = FUNC12(argc, argv);
	else if (!FUNC17(cmd, "clearstats"))
		rc = FUNC0(argc, argv);
	else if (!FUNC17(cmd, "tracer"))
		rc = FUNC18(argc, argv);
	else if (!FUNC17(cmd, "modinfo"))
		rc = FUNC11(argc, argv);
	else if (!FUNC17(cmd, "sched-class"))
		rc = FUNC15(argc, argv);
	else if (!FUNC17(cmd, "sched-queue"))
		rc = FUNC16(argc, argv);
	else if (!FUNC17(cmd, "loadcfg"))
		rc = FUNC8(argc, argv);
	else if (!FUNC17(cmd, "loadboot"))
		rc = FUNC6(argc, argv);
	else if (!FUNC17(cmd, "loadboot-cfg"))
		rc = FUNC7(argc, argv);
	else if (!FUNC17(cmd, "dumpstate"))
		rc = FUNC2(argc, argv);
	else if (!FUNC17(cmd, "policy"))
		rc = FUNC5(argc, argv);
	else if (!FUNC17(cmd, "hashfilter"))
		rc = FUNC3(argc, argv, 1);
	else {
		rc = EINVAL;
		FUNC19("invalid command \"%s\"", cmd);
	}

	return (rc);
}