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
 char* _PATH_TMP ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

int
FUNC14(int argc, char **argv)
{
	int c, fd, ret;
	char *tmpdir;
	const char *prefix;
	char *name;
	int dflag, qflag, tflag, uflag;

	ret = dflag = qflag = tflag = uflag = 0;
	prefix = "mktemp";
	name = NULL;

	while ((c = FUNC5(argc, argv, "dqt:u")) != -1)
		switch (c) {
		case 'd':
			dflag++;
			break;

		case 'q':
			qflag++;
			break;

		case 't':
			prefix = optarg;
			tflag++;
			break;

		case 'u':
			uflag++;
			break;

		default:
			FUNC12();
		}

	argc -= optind;
	argv += optind;

	if (!tflag && argc < 1) {
		tflag = 1;
		prefix = "tmp";
	}

	if (tflag) {
		tmpdir = FUNC4("TMPDIR");
		if (tmpdir == NULL)
			FUNC0(&name, "%s%s.XXXXXXXX", _PATH_TMP, prefix);
		else
			FUNC0(&name, "%s/%s.XXXXXXXX", tmpdir, prefix);
		/* if this fails, the program is in big trouble already */
		if (name == NULL) {
			if (qflag)
				return (1);
			else
				FUNC2(1, "cannot generate template");
		}
	}
		
	/* generate all requested files */
	while (name != NULL || argc > 0) {
		if (name == NULL) {
			name = FUNC10(argv[0]);
			argv++;
			argc--;
		}

		if (dflag) {
			if (FUNC6(name) == NULL) {
				ret = 1;
				if (!qflag)
					FUNC13("mkdtemp failed on %s", name);
			} else {
				FUNC8("%s\n", name);
				if (uflag)
					FUNC9(name);
			}
		} else {
			fd = FUNC7(name);
			if (fd < 0) {
				ret = 1;
				if (!qflag)
					FUNC13("mkstemp failed on %s", name);
			} else {
				FUNC1(fd);
				if (uflag)
					FUNC11(name);
				FUNC8("%s\n", name);
			}
		}
		if (name)
			FUNC3(name);
		name = NULL;
	}
	return (ret);
}