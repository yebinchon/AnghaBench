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
struct iwnstats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWN_DEFAULT_IF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char**,char*) ; 
 scalar_t__ FUNC4 (struct iwnstats*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwnstats*) ; 
 struct iwnstats* FUNC6 (char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int
FUNC10(int argc, char *argv[])
{
	struct iwnstats *is;
	int ch;
	char *ifname;
	bool first;
	char *sysctlname;
	size_t len;
	int ret;

	ifname = FUNC7(IWN_DEFAULT_IF);

	/* Parse command line arguments */
	while ((ch = FUNC3(argc, argv,
	    "hi:")) != -1) {
		switch (ch) {
		case 'i':
			if (ifname)
				FUNC2(ifname);
			ifname = FUNC7(optarg);
			break;
		default:
		case '?':
		case 'h':
			FUNC8();
			FUNC0(1);
		}
	}

	is = FUNC6(ifname);

	if (is == NULL) {
		FUNC1(stderr, "%s: couldn't allocate new stats structure\n",
		    argv[0]);
		FUNC0(127);
	}

	/* begin fetching data */
	first = true;
	while (1) {
		if (FUNC4(is) != 0) {
			FUNC1(stderr, "%s: fetch failed\n", argv[0]);
			if (first)
				return 1;
			goto next;
		}

		FUNC5(is);

	next:
		FUNC9(100 * 1000);
		first = false;
	}

	FUNC0(0);
}