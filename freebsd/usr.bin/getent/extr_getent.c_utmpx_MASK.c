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
struct utmpx {int dummy; } ;

/* Variables and functions */
 int RV_NOTFOUND ; 
 int RV_OK ; 
 int RV_USAGE ; 
 int UTXDB_ACTIVE ; 
 int UTXDB_LASTLOGIN ; 
 int UTXDB_LOG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC3 () ; 
 struct utmpx* FUNC4 () ; 
 scalar_t__ FUNC5 (int,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct utmpx const*) ; 

__attribute__((used)) static int
FUNC8(int argc, char *argv[])
{
	const struct utmpx *ut;
	const char *file = NULL;
	int rv = RV_OK, db = 0;

	FUNC0(argc > 1);
	FUNC0(argv != NULL);

	if (argc == 3 || argc == 4) {
		if (FUNC6(argv[2], "active") == 0)
			db = UTXDB_ACTIVE;
		else if (FUNC6(argv[2], "lastlogin") == 0)
			db = UTXDB_LASTLOGIN;
		else if (FUNC6(argv[2], "log") == 0)
			db = UTXDB_LOG;
		else
			rv = RV_USAGE;
		if (argc == 4)
			file = argv[3];
	} else {
		rv = RV_USAGE;
	}

	if (rv == RV_USAGE) {
		FUNC2(stderr,
		    "Usage: %s utmpx active | lastlogin | log [filename]\n",
		    FUNC3());
	} else if (rv == RV_OK) {
		if (FUNC5(db, file) != 0)
			return (RV_NOTFOUND);
		while ((ut = FUNC4()) != NULL)
			FUNC7(ut);
		FUNC1();
	}
	return (rv);
}