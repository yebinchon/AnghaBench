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
struct hostent {int /*<<< orphan*/  h_addr; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  int /*<<< orphan*/  bdaddr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hostent* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  h_errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int numeric_bdaddr ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char *argv[])
{
	int		n;
	bdaddr_t	bdaddr;

	FUNC7(&bdaddr, 0, sizeof(bdaddr));

	/* Process command line arguments */
	while ((n = FUNC4(argc, argv, "a:nh")) != -1) {
		switch (n) {
		case 'a':
			if (!FUNC0(optarg, &bdaddr)) {
				struct hostent	*he = NULL;

				if ((he = FUNC1(optarg)) == NULL)
					FUNC3(1, "%s: %s", optarg, FUNC5(h_errno));

				FUNC6(&bdaddr, he->h_addr, sizeof(bdaddr));
			}
			break;

		case 'n':
			numeric_bdaddr = 1;
			break;

		case 'h':
		default:
			FUNC8();
			break;
		}
	}

	argc -= optind;
	argv += optind;

	if (*argv == NULL)
		FUNC8();

	return (FUNC2(&bdaddr, argc, argv));
}