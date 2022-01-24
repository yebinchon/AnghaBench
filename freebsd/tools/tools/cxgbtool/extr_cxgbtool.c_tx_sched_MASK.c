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
struct ch_hw_sched {unsigned int sched; int mode; int channel; int kbps; int class_ipg; int flow_ipg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_SET_HW_SCHED ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,struct ch_hw_sched*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int,char**,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(int argc, char *argv[], int start_arg, const char *iff_name)
{
	struct ch_hw_sched op;
	unsigned int idx, val;

	if (argc < 5 || FUNC3(argv[start_arg++], &idx))
		return -1;

	op.sched = idx;
	op.mode = op.channel = -1;
	op.kbps = op.class_ipg = op.flow_ipg = -1;

	while (argc > start_arg) {
		if (!FUNC5(argv[start_arg], "mode")) {
			if (start_arg + 1 >= argc)
				FUNC2(1, "missing value for mode");
			if (!FUNC5(argv[start_arg + 1], "class"))
				op.mode = 0;
			else if (!FUNC5(argv[start_arg + 1], "flow"))
				op.mode = 1;
			else
				FUNC2(1, "bad mode \"%s\"", argv[start_arg + 1]);
		} else if (!FUNC5(argv[start_arg], "channel") &&
			 !FUNC4(argc, argv, start_arg, &val))
			op.channel = val;
		else if (!FUNC5(argv[start_arg], "rate") &&
			 !FUNC4(argc, argv, start_arg, &val))
			op.kbps = val;
		else if (!FUNC5(argv[start_arg], "ipg") &&
			 !FUNC4(argc, argv, start_arg, &val))
			op.class_ipg = val;
		else if (!FUNC5(argv[start_arg], "flowipg") &&
			 !FUNC4(argc, argv, start_arg, &val))
			op.flow_ipg = val;
		else
			FUNC2(1, "unknown scheduler parameter \"%s\"",
			     argv[start_arg]);
		start_arg += 2;
	}

	if (FUNC0(iff_name, CHELSIO_SET_HW_SCHED, &op) < 0)
		 FUNC1(1, "pktsched");

	return 0;
}