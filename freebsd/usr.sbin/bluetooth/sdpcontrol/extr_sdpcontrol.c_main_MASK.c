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
 char* SDP_LOCAL_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 struct hostent* FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int,int,char**) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  h_errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char *argv[])
{
	char const	*control = SDP_LOCAL_PATH;
	int		 n, local;
	bdaddr_t	 bdaddr;

	FUNC7(&bdaddr, 0, sizeof(bdaddr));
	local = 0;

	/* Process command line arguments */
	while ((n = FUNC4(argc, argv, "a:c:lh")) != -1) {
		switch (n) {
		case 'a': /* bdaddr */
			if (!FUNC0(optarg, &bdaddr)) {
				struct hostent  *he = NULL;

				if ((he = FUNC1(optarg)) == NULL)
					FUNC3(1, "%s: %s", optarg, FUNC5(h_errno));
 
				FUNC6(&bdaddr, he->h_addr, sizeof(bdaddr));
			}
			break;

		case 'c': /* control socket */
			control = optarg;
			break;

		case 'l': /* local sdpd */
			local = 1;
			break;

		case 'h':
		default:
			FUNC8();
			/* NOT REACHED */
		}
	}

	argc -= optind; 
	argv += optind;

	if (*argv == NULL)
		FUNC8();

	return (FUNC2(&bdaddr, control, local, argc, argv));
}