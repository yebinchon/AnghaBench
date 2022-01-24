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
typedef  int /*<<< orphan*/ * efidp ;
typedef  int /*<<< orphan*/  efi ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int MAXSIZE ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ **) ; 
 int errno ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void
FUNC9(void)
{
	char buffer[MAXSIZE];
	char efi[MAXSIZE];
	efidp dp;
	char *walker;
	int rv;

	dp = NULL;
	while (FUNC3(buffer, sizeof(buffer), stdin)) {
		walker= FUNC6(buffer);
		FUNC4(dp);
		dp = NULL;
		rv = FUNC2(walker, &dp);
		if (rv != 0 || dp == NULL) {
			errno = rv;
			FUNC7("Can't convert '%s' to efi", walker);
			continue;
		}
		if (FUNC0(efi, sizeof(efi),
		    dp, FUNC1(dp)) < 0) {
			FUNC8("Can't format dp for '%s'", walker);
			continue;
		}
		FUNC5("%s\n", efi);
	}
	FUNC4(dp);
}