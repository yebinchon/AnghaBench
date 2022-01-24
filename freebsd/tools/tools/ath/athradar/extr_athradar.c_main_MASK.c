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
struct radarhandler {int dummy; } ;
typedef  int /*<<< orphan*/  radar ;

/* Variables and functions */
 char* ATH_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct radarhandler*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radarhandler*) ; 
 int /*<<< orphan*/  FUNC3 (struct radarhandler*) ; 
 scalar_t__ FUNC4 (struct radarhandler*,char const*) ; 
 scalar_t__ FUNC5 (struct radarhandler*,char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

int
FUNC9(int argc, char *argv[])
{
	struct radarhandler radar;
	const char *devname = ATH_DEFAULT;
	const char *progname = argv[0];

	FUNC1(&radar, 0, sizeof(radar));

	/* Parse command line options */
	if (argc >= 2 && FUNC7(argv[1], "-h") == 0) {
		FUNC8(progname);
		FUNC0(0);
	}
	if (argc >= 2 && FUNC7(argv[1], "-?") == 0) {
		FUNC8(progname);
		FUNC0(0);
	}

	if (argc >= 2 && FUNC7(argv[1], "-i") == 0) {
		if (argc == 2) {
			FUNC8(progname);
			FUNC0(127);
		}
		devname = argv[2];
		argc -= 2; argv += 2;
	}

	/* At this point we require at least one command */
	if (argc == 1) {
		FUNC8(progname);
		FUNC0(127);
	}

	if (FUNC4(&radar, devname) == 0)
		FUNC0(127);

	if (FUNC6(argv[1], "get") == 0) {
		FUNC3(&radar);
	} else if (FUNC6(argv[1], "set") == 0) {
		if (argc < 4) {
			FUNC8(progname);
			FUNC0(127);
		}
		if (FUNC5(&radar, argv[2], argv[3]) == 0) {
			FUNC8(progname);
			FUNC0(127);
		}
	} else {
		FUNC8(progname);
		FUNC0(127);
	}

	/* wrap up */
	FUNC2(&radar);
	FUNC0(0);
}