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
typedef  int /*<<< orphan*/  hs ;
typedef  int /*<<< orphan*/  HAL_CHANNEL_SURVEY ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 char* ATH_DEFAULT ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int argc, char *argv[])
{
	FILE *fd = NULL;
	const char *ifname;
	int c, s;
	int l = 0;

	s = FUNC8(AF_INET, SOCK_DGRAM, 0);
	if (s < 0)
		FUNC0(1, "socket");
	ifname = FUNC2("ATH");
	if (!ifname)
		ifname = ATH_DEFAULT;

	progname = argv[0];
	while ((c = FUNC3(argc, argv, "i:")) != -1)
		switch (c) {
		case 'i':
			ifname = optarg;
			break;
		default:
			FUNC9();
			/*NOTREACHED*/
		}
	argc -= optind;
	argv += optind;

	/* Now, loop over and fetch some statistics .. */
	while (1) {
		HAL_CHANNEL_SURVEY hs;
		FUNC4(&hs, '\0', sizeof(hs));
		if (FUNC1(s, ifname, &hs) == 0)
			break;
		/* XXX screen height! */
		if (l % 23 == 0) {
			FUNC5("         "
			    "min                   "
			    "avg                   "
			    "max\n");
			FUNC5("  tx%%  rx%%  bc%%  ec%%  ");
			FUNC5("  tx%%  rx%%  bc%%  ec%%  ");
			FUNC5("  tx%%  rx%%  bc%%  ec%%\n");
		}
		FUNC6(&hs);
		FUNC7(1);
		l++;
	}

	return (0);
}