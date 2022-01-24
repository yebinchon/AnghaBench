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
typedef  int key_t ;

/* Variables and functions */
 int IPC_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SIGSYS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ errflg ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int,char**,char*) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  not_configured ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int optopt ; 
 int /*<<< orphan*/  rmverbose ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ signaled ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  use_sysctl ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 

int
FUNC15(int argc, char *argv[])
{
	int c, result, target_id;
	key_t target_key;

	while ((c = FUNC6(argc, argv, "q:m:s:Q:M:S:vWy")) != -1) {

		signaled = 0;
		switch (c) {
		case 'v':
			rmverbose++;
			break;
		case 'y':
			use_sysctl = 0;
			break;
		}
	}

	optind = 1;
	errflg = 0;
	FUNC10(SIGSYS, not_configured);
	while ((c = FUNC6(argc, argv, "q:m:s:Q:M:S:vWy")) != -1) {

		signaled = 0;
		switch (c) {
		case 'q':
		case 'm':
		case 's':
			target_id = FUNC2(optarg);
			if (c == 'q')
				result = FUNC7(0, target_id);
			else if (c == 'm')
				result = FUNC9(0, target_id);
			else
				result = FUNC8(0, target_id);
			if (result < 0) {
				errflg++;
				if (!signaled)
					FUNC13("%sid(%d): ",
					    FUNC0(FUNC11(c)), target_id);
				else
					FUNC14(
					    "%ss are not configured "
					    "in the running kernel",
					    FUNC1(FUNC11(c)));
			}
			break;
		case 'Q':
		case 'M':
		case 'S':
			target_key = FUNC3(optarg);
			if (target_key == IPC_PRIVATE) {
				FUNC14("can't remove private %ss",
				    FUNC1(c));
				continue;
			}
			if (c == 'Q')
				result = FUNC7(target_key, 0);
			else if (c == 'M')
				result = FUNC9(target_key, 0);
			else
				result = FUNC8(target_key, 0);
			if (result < 0) {
				errflg++;
				if (!signaled)
					FUNC13("%ss(%ld): ",
					    FUNC0(c), target_key);
				else
					FUNC14("%ss are not configured "
					    "in the running kernel",
					    FUNC1(c));
			}
			break;
		case 'v':
		case 'y':
			/* Handled in other getopt() loop */
			break;
		case 'W':
			FUNC7(-1, 0);
			FUNC9(-1, 0);
			FUNC8(-1, 0);
			break;
		case ':':
			FUNC5(stderr,
			    "option -%c requires an argument\n", optopt);
			FUNC12();
		case '?':
			FUNC5(stderr, "unrecognized option: -%c\n", optopt);
			FUNC12();
		}
	}

	if (optind != argc) {
		FUNC5(stderr, "unknown argument: %s\n", argv[optind]);
		FUNC12();
	}
	FUNC4(errflg);
}