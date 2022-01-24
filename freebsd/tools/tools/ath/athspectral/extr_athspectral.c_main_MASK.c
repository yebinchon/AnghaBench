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
struct spectralhandler {int dummy; } ;
typedef  int /*<<< orphan*/  spectral ;

/* Variables and functions */
 char* ATH_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct spectralhandler*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spectralhandler*) ; 
 int /*<<< orphan*/  FUNC4 (struct spectralhandler*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spectralhandler*) ; 
 scalar_t__ FUNC6 (struct spectralhandler*,char const*) ; 
 scalar_t__ FUNC7 (struct spectralhandler*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct spectralhandler*) ; 
 int /*<<< orphan*/  FUNC9 (struct spectralhandler*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

int
FUNC13(int argc, char *argv[])
{
	struct spectralhandler spectral;
	const char *devname = ATH_DEFAULT;
	const char *progname = argv[0];

	FUNC2(&spectral, 0, sizeof(spectral));

	/* Parse command line options */
	if (argc >= 2 && FUNC11(argv[1], "-h") == 0) {
		FUNC12(progname);
		FUNC1(0);
	}
	if (argc >= 2 && FUNC11(argv[1], "-?") == 0) {
		FUNC12(progname);
		FUNC1(0);
	}

	if (argc >= 2 && FUNC11(argv[1], "-i") == 0) {
		if (argc == 2) {
			FUNC12(progname);
			FUNC1(127);
		}
		devname = argv[2];
		argc -= 2; argv += 2;
	}

	/* At this point we require at least one command */
	if (argc == 1) {
		FUNC12(progname);
		FUNC1(127);
	}

	if (FUNC6(&spectral, devname) == 0)
		FUNC1(127);

	if (FUNC10(argv[1], "get") == 0) {
		FUNC5(&spectral);
	} else if (FUNC10(argv[1], "set") == 0) {
		if (argc < 4) {
			FUNC12(progname);
			FUNC1(127);
		}
		if (FUNC7(&spectral, argv[2], argv[3]) == 0) {
			FUNC12(progname);
			FUNC1(127);
		}
	} else if (FUNC10(argv[1], "start") == 0) {
		FUNC8(&spectral);
	} else if (FUNC10(argv[1], "stop") == 0) {
		FUNC9(&spectral);
	} else if (FUNC10(argv[1], "enable_at_reset") == 0) {
		if (argc < 3) {
			FUNC12(progname);
			FUNC1(127);
		}
		FUNC4(&spectral, FUNC0(argv[2]));
	} else {
		FUNC12(progname);
		FUNC1(127);
	}

	/* wrap up */
	FUNC3(&spectral);
	FUNC1(0);
}