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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char** FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char** environ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 char FUNC6 (int,char**,char*) ; 
 char* optarg ; 
 size_t optind ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int
FUNC13(int argc, char **argv)
{
	char arg;
	const char *eol = "\n";
	const char *value;
	static char *emptyEnv[] = { NULL };
	static char *staticEnv[] = { "FOO=bar", NULL };

	if (argc == 1) {
		FUNC12(argv[0]);
		FUNC4(EXIT_FAILURE);
	}

	/* The entire program is basically executed from this loop. */
	while ((arg = FUNC6(argc, argv, "DGS:Ub:c:g:hp:rs:tu:")) != -1) {
		switch (arg) {
		case 'b':
			FUNC1(optarg);
			break;

		case 'c':
			switch (FUNC0(optarg)) {
			case 1:
				environ = NULL;
				break;

			case 2:
				environ[0] = NULL;
				break;

			case 3:
				environ = FUNC2(1, sizeof(*environ));
				break;

			case 4:
				environ = emptyEnv;
				break;
			}
			break;

		case 'D':
			FUNC3();
			break;

		case 'G':
		case 'g':
			value = FUNC5(arg == 'g' ? optarg : NULL);
			FUNC8("%s%s", value == NULL ? "*NULL*" : value, eol);
			break;

		case 'p':
			FUNC7(FUNC9(optarg), eol);
			break;

		case 'r':
			environ = staticEnv;
			break;

		case 'S':
			FUNC7(FUNC10(NULL, optarg,
			    FUNC0(argv[optind])), eol);
			optind += 1;
			break;

		case 's':
			FUNC7(FUNC10(optarg, argv[optind],
			    FUNC0(argv[optind + 1])), eol);
			optind += 2;
			break;

		case 't':
			eol = " ";
			break;

		case 'U':
		case 'u':
			FUNC7(FUNC11(arg == 'u' ? optarg : NULL),
			    eol);
			break;

		case 'h':
		default:
			FUNC12(argv[0]);
			FUNC4(EXIT_FAILURE);
		}
	}

	/* Output a closing newline in test mode. */
	if (eol[0] == ' ')
		FUNC8("\n");

	return (EXIT_SUCCESS);
}