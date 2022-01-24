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
 int /*<<< orphan*/  NG_HCI_BDADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 struct hostent* FUNC1 (void*) ; 
 void* config_file ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  h_errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* hids_file ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  verbose ; 

int
FUNC9(int argc, char *argv[])
{
	bdaddr_t	bdaddr;
	int		opt;

	FUNC5(NULL);
	FUNC7(&bdaddr, NG_HCI_BDADDR_ANY, sizeof(bdaddr));

	while ((opt = FUNC4(argc, argv, "a:c:H:hv")) != -1) {
		switch (opt) {
		case 'a': /* bdaddr */
			if (!FUNC0(optarg, &bdaddr)) {
				struct hostent  *he = NULL;

				if ((he = FUNC1(optarg)) == NULL)
					FUNC3(1, "%s: %s", optarg, FUNC6(h_errno));

				FUNC7(&bdaddr, he->h_addr, sizeof(bdaddr));
			}
			break;

		case 'c': /* config file */
			config_file = optarg;
			break;

		case 'H': /* HIDs file */
			hids_file = optarg;
			break;

		case 'v': /* verbose */
			verbose++;
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

	return (FUNC2(&bdaddr, argc, argv));
}