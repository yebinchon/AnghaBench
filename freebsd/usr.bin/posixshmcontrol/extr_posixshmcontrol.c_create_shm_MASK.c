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
 int FUNC0 (char*,long) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 long FUNC4 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(int argc, char **argv)
{
	char *end;
	long mode;
	int c, i, ret, ret1;

	mode = 0600;
	while ((c = FUNC3(argc, argv, "m:")) != -1) {
		switch (c) {
		case 'm':
			errno = 0;
			mode = FUNC4(optarg, &end, 0);
			if (mode == 0 && errno != 0)
				FUNC1(1, "mode:");
			if (*end != '\0')
				FUNC2(1, "non-integer mode");
			break;
		case '?':
		default:
			FUNC5();
			return (2);
		}
	}

	argc -= optind;
	argv += optind;
	ret = 0;
	for (i = 0; i < argc; i++) {
		ret1 = FUNC0(argv[i], mode);
		if (ret1 != 0 && ret == 0)
			ret = ret1;
	}
	return (ret);
}