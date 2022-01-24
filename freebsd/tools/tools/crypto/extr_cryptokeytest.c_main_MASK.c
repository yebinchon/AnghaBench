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
 int /*<<< orphan*/  crid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int verbose ; 

int
FUNC5(int argc, char *argv[])
{
	int c, i;

	while ((c = FUNC2(argc, argv, "d:v")) != -1) {
		switch (c) {
		case 'd':
			crid = FUNC0(optarg);
			break;
		case 'v':
			verbose = 1;
			break;
		default:
			FUNC4(argv[0]);
		}
	}
	argc -= optind, argv += optind;

	for (i = 0; i < 1000; i++) {
		FUNC1(stderr, "test %d\n", i);
		FUNC3();
	}
	return (0);
}