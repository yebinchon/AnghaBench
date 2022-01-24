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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CAPH_READ ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int STDIN_FILENO ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,char*) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int* FUNC9 (int) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

int
FUNC13(int argc, char **argv)
{
	bool quiet = false;
	int ch, i, *fds, fd;
	int ret = EXIT_SUCCESS;
	size_t nfds;
	FILE *fp;

	while ((ch = FUNC7(argc, argv, "qV")) != -1) {
		switch (ch) {
		case 'q':
			quiet = true;
			break;
		case 'V':
			/* Do nothing, compat with GNU rcs's ident */
			return (EXIT_SUCCESS);
		default:
			FUNC4(EXIT_FAILURE, "usage: %s [-q] [-V] [file...]",
			    FUNC8());
		}
	}

	argc -= optind;
	argv += optind;

	if (FUNC1() < 0)
		FUNC3(EXIT_FAILURE, "unable to limit stdio");

	if (argc == 0) {
		nfds = 1;
		fds = FUNC9(sizeof(*fds));
		if (fds == NULL)
			FUNC3(EXIT_FAILURE, "unable to allocate fds array");
		fds[0] = STDIN_FILENO;
	} else {
		nfds = argc;
		fds = FUNC9(sizeof(*fds) * nfds);
		if (fds == NULL)
			FUNC3(EXIT_FAILURE, "unable to allocate fds array");

		for (i = 0; i < argc; i++) {
			fds[i] = fd = FUNC10(argv[i], O_RDONLY);
			if (fd < 0) {
				FUNC12("%s", argv[i]);
				ret = EXIT_FAILURE;
				continue;
			}
			if (FUNC2(fd, CAPH_READ) < 0)
				FUNC3(EXIT_FAILURE,
				    "unable to limit fcntls/rights for %s",
				    argv[i]);
		}
	}

	/* Enter Capsicum sandbox. */
	if (FUNC0() < 0)
		FUNC3(EXIT_FAILURE, "unable to enter capability mode");

	for (i = 0; i < (int)nfds; i++) {
		if (fds[i] < 0)
			continue;

		fp = FUNC6(fds[i], "r");
		if (fp == NULL) {
			FUNC12("%s", argv[i]);
			ret = EXIT_FAILURE;
			continue;
		}
		if (FUNC11(fp, argc == 0 ? NULL : argv[i], quiet) != EXIT_SUCCESS)
			ret = EXIT_FAILURE;
		FUNC5(fp);
	}

	return (ret);
}