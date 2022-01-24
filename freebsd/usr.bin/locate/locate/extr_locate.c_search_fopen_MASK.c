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
 int /*<<< orphan*/  SEEK_SET ; 
 long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 scalar_t__ f_icase ; 
 scalar_t__ f_statistic ; 
 scalar_t__ f_stdin ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

void
FUNC9(char *db, char **s)
{
	FILE *fp;
#ifdef DEBUG
        long t0;
#endif
	       
	/* can only read stdin once */
	if (f_stdin) { 
		fp = stdin;
		if (*(s+1) != NULL) {
			FUNC8("read database from stdin, use only `%s' as pattern", *s);
			*(s+1) = NULL;
		}
	} 
	else if ((fp = FUNC5(db, "r")) == NULL)
		FUNC1(1,  "`%s'", db);

	/* count only chars or lines */
	if (f_statistic) {
		FUNC7(fp, db);
		(void)FUNC4(fp);
		return;
	}

	/* foreach search string ... */
	while(*s != NULL) {
#ifdef DEBUG
		t0 = cputime();
#endif
		if (!f_stdin &&
		    FUNC6(fp, (long)0, SEEK_SET) == -1)
			FUNC1(1, "fseek to begin of ``%s''\n", db);

		if (f_icase)
			FUNC3(fp, *s, db);
		else
			FUNC2(fp, *s, db);
#ifdef DEBUG
		warnx("fastfind %ld ms", cputime () - t0);
#endif
		s++;
	} 
	(void)FUNC4(fp);
}