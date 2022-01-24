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

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  Z1_opt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int FUNC5 (int,char**) ; 
 int /*<<< orphan*/  include ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int n_opt ; 
 int o_opt ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int tty ; 
 int u_opt ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int unzip_debug ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ zipinfo_mode ; 

int
FUNC11(int argc, char *argv[])
{
	const char *zipfile;
	int nopts;

	if (FUNC6(STDOUT_FILENO))
		tty = 1;

	if (FUNC4("UNZIP_DEBUG") != NULL)
		unzip_debug = 1;
	for (int i = 0; i < argc; ++i)
		FUNC1("%s%c", argv[i], (i < argc - 1) ? ' ' : '\n');

	/*
	 * Info-ZIP's unzip(1) expects certain options to come before the
	 * zipfile name, and others to come after - though it does not
	 * enforce this.  For simplicity, we accept *all* options both
	 * before and after the zipfile name.
	 */
	nopts = FUNC5(argc, argv);

	/*
	 * When more of the zipinfo mode options are implemented, this
	 * will need to change.
	 */
	if (zipinfo_mode && !Z1_opt) {
		FUNC7("Zipinfo mode needs additional options\n");
		FUNC3(1);
	}

	if (argc <= nopts)
		FUNC10();
	zipfile = argv[nopts++];

	if (FUNC8(zipfile, "-") == 0)
		zipfile = NULL; /* STDIN */

	while (nopts < argc && *argv[nopts] != '-')
		FUNC0(&include, argv[nopts++]);

	nopts--; /* fake argv[0] */
	nopts += FUNC5(argc - nopts, argv + nopts);

	if (n_opt + o_opt + u_opt > 1)
		FUNC2("-n, -o and -u are contradictory");

	FUNC9(zipfile);

	FUNC3(0);
}