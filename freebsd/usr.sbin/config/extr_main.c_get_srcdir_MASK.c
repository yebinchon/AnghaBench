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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 char* srcdir ; 
 int FUNC4 (char*,struct stat*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct stat lg, phy;
	char *p, *pwd;
	int i;

	if (FUNC3("../..", srcdir) == NULL)
		FUNC0(EXIT_FAILURE, "Unable to find root of source tree");
	if ((pwd = FUNC2("PWD")) != NULL && *pwd == '/' &&
	    (pwd = FUNC5(pwd)) != NULL) {
		/* Remove the last two path components. */
		for (i = 0; i < 2; i++) {
			if ((p = FUNC7(pwd, '/')) == NULL) {
				FUNC1(pwd);
				return;
			}
			*p = '\0';
		}
		if (FUNC4(pwd, &lg) != -1 && FUNC4(srcdir, &phy) != -1 &&
		    lg.st_dev == phy.st_dev && lg.st_ino == phy.st_ino)
			FUNC6(srcdir, pwd, MAXPATHLEN);
		FUNC1(pwd);
	}
}