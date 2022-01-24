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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int) ; 

void
FUNC8(FILE *fp)
{
	FILE *dbuf;
	int c;
	char *cp;

	if (FUNC2(fp) == 0)
		return;
	cp = FUNC4();
	c = FUNC7(077);
	dbuf = FUNC1(cp, "a");
	(void)FUNC7(c);
	if (dbuf == NULL)
		return;
	while ((c = FUNC3(fp)) != EOF)
		(void)FUNC5(c, dbuf);
	(void)FUNC0(dbuf);
	FUNC6(fp);
}