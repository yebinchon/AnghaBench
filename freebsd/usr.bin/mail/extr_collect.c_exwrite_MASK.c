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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

int
FUNC12(char name[], FILE *fp, int f)
{
	FILE *of;
	int c, lc;
	long cc;
	struct stat junk;

	if (f) {
		FUNC7("\"%s\" ", name);
		(void)FUNC4(stdout);
	}
	if (FUNC9(name, &junk) >= 0 && FUNC2(junk.st_mode)) {
		if (!f)
			FUNC5(stderr, "%s: ", name);
		FUNC5(stderr, "File exists\n");
		return (-1);
	}
	if ((of = FUNC1(name, "w")) == NULL) {
		FUNC10((char *)NULL);
		return (-1);
	}
	lc = 0;
	cc = 0;
	while ((c = FUNC6(fp)) != EOF) {
		cc++;
		if (c == '\n')
			lc++;
		(void)FUNC8(c, of);
		if (FUNC3(of)) {
			FUNC11("%s", name);
			(void)FUNC0(of);
			return (-1);
		}
	}
	(void)FUNC0(of);
	FUNC7("%d/%ld\n", lc, cc);
	(void)FUNC4(stdout);
	return (0);
}