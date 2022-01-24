#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ALL ; 
 int all_charmaps ; 
 int all_locales ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 TYPE_1__* kwinfo ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t FUNC4 (TYPE_1__*) ; 
 scalar_t__ optind ; 
 int prt_categories ; 
 int prt_keywords ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int
FUNC11(int argc, char *argv[])
{
	int	ch;
	int	tmp;

	while ((ch = FUNC1(argc, argv, "ackms:")) != -1) {
		switch (ch) {
		case 'a':
			all_locales = 1;
			break;
		case 'c':
			prt_categories = 1;
			break;
		case 'k':
			prt_keywords = 1;
			break;
		case 'm':
			all_charmaps = 1;
			break;
		default:
			FUNC10();
		}
	}
	argc -= optind;
	argv += optind;

	/* validate arguments */
	if (all_locales && all_charmaps)
		FUNC10();
	if ((all_locales || all_charmaps) && argc > 0)
		FUNC10();
	if ((all_locales || all_charmaps) && (prt_categories || prt_keywords))
		FUNC10();

	/* process '-a' */
	if (all_locales) {
		FUNC3();
		FUNC0(0);
	}

	/* process '-m' */
	if (all_charmaps) {
		FUNC2();
		FUNC0(0);
	}

	/* check for special case '-k list' */
	tmp = 0;
	if (prt_keywords && argc > 0)
		while (tmp < argc)
			if (FUNC9(argv[tmp++], "list") == 0) {
				FUNC7(argv[tmp]);
				FUNC0(0);
			}

	/* process '-c', '-k', or command line arguments. */
	if (prt_categories || prt_keywords || argc > 0) {
		if (prt_keywords || argc > 0)
			FUNC5(LC_ALL, "");
		if (argc > 0) {
			while (argc > 0) {
				FUNC6(*argv);
				argv++;
				argc--;
			}
		} else {
			uint i;
			for (i = 0; i < FUNC4(kwinfo); i++)
				FUNC6(kwinfo[i].name);
		}
		FUNC0(0);
	}

	/* no arguments, show current locale state */
	FUNC8();

	return (0);
}