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
 int /*<<< orphan*/  EINVAL ; 
 char chip_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const* nexus ; 
 char const* progname ; 
 int FUNC1 (int,char const**) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(int argc, const char *argv[])
{
	int rc = -1;

	progname = argv[0];

	if (argc == 2) {
		if (!FUNC3(argv[1], "-h") || !FUNC3(argv[1], "--help")) {
			FUNC4(stdout);
			FUNC0(0);
		}
	}

	if (argc < 3) {
		FUNC4(stderr);
		FUNC0(EINVAL);
	}

	nexus = argv[1];
	chip_id = nexus[1] - '0';

	/* progname and nexus */
	argc -= 2;
	argv += 2;

	if (argc == 1 && !FUNC3(argv[0], "stdio"))
		rc = FUNC2();
	else
		rc = FUNC1(argc, argv);

	return (rc);
}