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
struct utmpx {scalar_t__ ut_type; } ;

/* Variables and functions */
 scalar_t__ USER_PROCESS ; 
 int /*<<< orphan*/  UTXDB_LASTLOGIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  file ; 
 int FUNC2 (int,char**,char*) ; 
 struct utmpx* FUNC3 () ; 
 struct utmpx* FUNC4 (char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int order ; 
 int /*<<< orphan*/  FUNC5 (struct utmpx*) ; 
 int /*<<< orphan*/  FUNC6 (struct utmpx*,int,int,int /*<<< orphan*/ ) ; 
 struct utmpx* FUNC7 (struct utmpx*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  utcmp ; 
 int /*<<< orphan*/  utcmp_time ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int FUNC16 (int,char**) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 

int
FUNC18(int argc, char *argv[])
{
	int	ch, i, ulistsize;
	struct utmpx *u, *ulist;

	argc = FUNC16(argc, argv);
	if (argc < 0)
		FUNC1(1);

	while ((ch = FUNC2(argc, argv, "f:rt")) != -1) {
		switch (ch) {
		case 'f':
			file = optarg;
			break;
		case 'r':
			order = -1;
			break;
		case 't':
			utcmp = utcmp_time;
			break;
		default:
			FUNC9();
		}
	}
	argc -= optind;
	argv += optind;

	FUNC14("lastlogin-information");
	FUNC15("lastlogin");

	if (argc > 0) {
		/* Process usernames given on the command line. */
		for (i = 0; i < argc; i++) {
			if (FUNC8(UTXDB_LASTLOGIN, file) != 0)
				FUNC12(1, "failed to open lastlog database");
			if ((u = FUNC4(argv[i])) == NULL) {
				FUNC17("user '%s' not found", argv[i]);
				continue;
			}
			FUNC5(u);
			FUNC0();
		}
	} else {
		/* Read all lastlog entries, looking for active ones. */
		if (FUNC8(UTXDB_LASTLOGIN, file) != 0)
			FUNC12(1, "failed to open lastlog database");
		ulist = NULL;
		ulistsize = 0;
		while ((u = FUNC3()) != NULL) {
			if (u->ut_type != USER_PROCESS)
				continue;
			if ((ulistsize % 16) == 0) {
				ulist = FUNC7(ulist,
				    (ulistsize + 16) * sizeof(struct utmpx));
				if (ulist == NULL)
					FUNC12(1, "malloc");
			}
			ulist[ulistsize++] = *u;
		}
		FUNC0();

		FUNC6(ulist, ulistsize, sizeof(struct utmpx), utcmp);
		for (i = 0; i < ulistsize; i++)
			FUNC5(&ulist[i]);
	}

	FUNC11("lastlogin");
	FUNC10("lastlogin-information");
	FUNC13();

	FUNC1(0);
}