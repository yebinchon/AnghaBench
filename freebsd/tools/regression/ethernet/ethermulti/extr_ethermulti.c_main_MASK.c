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
 int /*<<< orphan*/  PRIV_ASIS ; 
 int dorandom ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC3 () ; 
 int FUNC4 (int,char**,char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/ * ifname ; 
 int /*<<< orphan*/ * optarg ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int verbose ; 

int
FUNC9(int argc, char *argv[])
{
	int ch;

	while ((ch = FUNC4(argc, argv, "i:rv")) != -1) {
		switch (ch) {
		case 'i':
			ifname = optarg;
			break;
		case 'r':
			dorandom = 1;	/* introduce non-determinism */
			break;
		case 'v':
			verbose = 1;
			break;
		default:
			FUNC8();
		}
	}
	if (ifname == NULL)
		FUNC8();

	FUNC6("1..1\n");
	if (FUNC3() != 0) {
		FUNC0(1, "Not running as root, can't run tests as non-root");
		/*NOTREACHED*/
	} else {
		FUNC2(stderr,
		    "Running tests with ruid %d euid %d sock uid 0\n",
		    FUNC5(), FUNC3());
		FUNC7(PRIV_ASIS);
	}
	FUNC6("ok 1 - ethermulti\n");
	FUNC1(0);
}