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
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int FUNC5 (char*,char*) ; 
 int FUNC6 (char*,char*,int,int) ; 
 int FUNC7 (char*,char*,int,int) ; 
 int FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int
FUNC11(int argc, char **argv)
{
	int ch, aflag = 0, hflag = 0, nflag = 0, lflag = 0, rflag = 0,
	    uflag = 0;
	char *rule = NULL, *unexpanded_rule;
	int i, cumulated_error, error;

	while ((ch = FUNC4(argc, argv, "ahlnru")) != -1) {
		switch (ch) {
		case 'a':
			aflag = 1;
			break;
		case 'h':
			hflag = 1;
			break;
		case 'l':
			lflag = 1;
			break;
		case 'n':
			nflag = 1;
			break;
		case 'r':
			rflag = 1;
			break;
		case 'u':
			uflag = 1;
			break;

		case '?':
		default:
			FUNC10();
		}
	}

	argc -= optind;
	argv += optind;
	
	if (aflag + lflag + rflag + uflag > 1)
		FUNC1(1, "at most one of -a, -l, -r, or -u may be specified");

	if (argc == 0) {
		if (aflag + lflag + rflag + uflag == 0) {
			rule = FUNC9("::");
			FUNC7(rule, rule, hflag, nflag);

			return (0);
		}

		FUNC10();
	}

	cumulated_error = 0;

	for (i = 0; i < argc; i++) {
		unexpanded_rule = argv[i];

		/*
		 * Skip resolving if passed -n _and_ -a.  Ignore -n otherwise,
		 * so we can still do "rctl -n u:root" and see the rules without
		 * resolving the UID.
		 */
		if (aflag != 0 && nflag != 0)
			rule = FUNC2(unexpanded_rule, false);
		else
			rule = FUNC2(unexpanded_rule, true);

		if (rule == NULL) {
			cumulated_error++;
			continue;
		}

		/*
		 * The reason for passing the unexpanded_rule is to make
		 * it easier for the user to search for the problematic
		 * rule in the passed input.
		 */
		if (aflag) {
			error = FUNC0(rule, unexpanded_rule);
		} else if (lflag) {
			error = FUNC6(rule, unexpanded_rule,
			    hflag, nflag);
		} else if (rflag) {
			error = FUNC5(rule, unexpanded_rule);
		} else if (uflag) {
			error = FUNC8(rule, unexpanded_rule, hflag);
		} else  {
			error = FUNC7(rule, unexpanded_rule,
			    hflag, nflag);
		}

		if (error != 0)
			cumulated_error++;

		FUNC3(rule);
	}

	return (cumulated_error);
}