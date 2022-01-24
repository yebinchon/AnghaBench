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
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  REG_BASIC ; 
 int /*<<< orphan*/  YESEXPR ; 
 int /*<<< orphan*/  _PATH_TTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC9(void)
{
	regex_t cre;
	size_t rsize;
	int match;
	char *response;
	FILE *ttyfp;

	if ((ttyfp = FUNC3(_PATH_TTY, "r")) == NULL)
		return (2);	/* Indicate that the TTY failed to open. */
	(void)FUNC4(stderr, "?...");
	(void)FUNC1(stderr);
	if ((response = FUNC2(ttyfp, &rsize)) == NULL ||
	    FUNC6(&cre, FUNC5(YESEXPR), REG_BASIC) != 0) {
		(void)FUNC0(ttyfp);
		return (0);
	}
	response[rsize - 1] = '\0';
	match = FUNC7(&cre, response, 0, NULL, 0);
	(void)FUNC0(ttyfp);
	FUNC8(&cre);
	return (match == 0);
}