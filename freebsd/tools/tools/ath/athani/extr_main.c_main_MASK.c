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
struct ath_driver_req {int dummy; } ;
struct ath_diag {int dummy; } ;

/* Variables and functions */
 char* ATH_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct ath_driver_req*,char const*) ; 
 scalar_t__ FUNC1 (struct ath_driver_req*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_driver_req*) ; 
 scalar_t__ FUNC3 (struct ath_driver_req*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char *argv[])
{
	struct ath_diag atd;
	const char *ifname;
	struct ath_driver_req req;
	int what, c;

	FUNC2(&req);

	ifname = FUNC5("ATH");
	if (!ifname)
		ifname = ATH_DEFAULT;

	what = 0;
	while ((c = FUNC6(argc, argv, "i:l")) != -1)
		switch (c) {
		case 'i':
			ifname = optarg;
			break;
		case 'l':
			FUNC7();
			FUNC4(0);
		default:
			FUNC8();
			/*NOTREACHED*/
		}

	/* Initialise the driver interface */
	if (FUNC3(&req, ifname) < 0) {
		FUNC4(127);
	}

	argc -= optind;
	argv += optind;

	if (argc == 0) {
		FUNC0(&req, ifname);
		FUNC4(0);
	}

	if (argc < 2) {
		FUNC8();
		/*NOTREACHED*/
	}

	if (FUNC1(&req, ifname, argv[0], argv[1]) != 0)
		FUNC4(1);

	FUNC4(0);
}