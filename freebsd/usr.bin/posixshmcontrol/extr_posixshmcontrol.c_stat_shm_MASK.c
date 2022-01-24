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
 int FUNC0 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int
FUNC3(int argc, char **argv)
{
	int c, i, ret, ret1;
	bool hsize, uname;

	hsize = false;
	uname = true;

	while ((c = FUNC0(argc, argv, "hn")) != -1) {
		switch (c) {
		case 'h':
			hsize = true;
			break;
		case 'n':
			uname = false;
			break;
		default:
			FUNC2();
			return (2);
		}
	}
	argc -= optind;
	argv += optind;

	ret = 0;
	for (i = 0; i < argc; i++) {
		ret1 = FUNC1(argv[i], hsize, uname);
		if (ret1 != 0 && ret == 0)
			ret = ret1;
	}
	return (ret);
}