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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FILENAME_MAX ; 
 int allpaths ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (int,char**,char*) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 
 scalar_t__ optind ; 
 int FUNC6 (char*,char*) ; 
 int silent ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char **argv)
{
	char *p, *path;
	ssize_t pathlen;
	int opt, status;

	status = EXIT_SUCCESS;

	while ((opt = FUNC3(argc, argv, "as")) != -1) {
		switch (opt) {
		case 'a':
			allpaths = 1;
			break;
		case 's':
			silent = 1;
			break;
		default:
			FUNC8();
			break;
		}
	}

	argv += optind;
	argc -= optind;

	if (argc == 0)
		FUNC8();

	if ((p = FUNC2("PATH")) == NULL)
		FUNC1(EXIT_FAILURE);
	pathlen = FUNC7(p) + 1;
	path = FUNC4(pathlen);
	if (path == NULL)
		FUNC0(EXIT_FAILURE, NULL);

	while (argc > 0) {
		FUNC5(path, p, pathlen);

		if (FUNC7(*argv) >= FILENAME_MAX ||
		    FUNC6(path, *argv) == -1)
			status = EXIT_FAILURE;

		argv++;
		argc--;
	}

	FUNC1(status);
}