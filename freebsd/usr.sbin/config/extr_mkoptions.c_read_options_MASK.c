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
 int MAXPATHLEN ; 
 int /*<<< orphan*/  OL_ALIAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* machinename ; 
 int /*<<< orphan*/  otab ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC3(void)
{
	char fname[MAXPATHLEN];

	FUNC0(&otab);
	FUNC1("../../conf/options", 0);
	(void)FUNC2(fname, sizeof fname, "../../conf/options.%s",
	    machinename);
	if (!FUNC1(fname, 0)) {
		(void)FUNC2(fname, sizeof fname, "options.%s", machinename);
		FUNC1(fname, 0);
	}
	FUNC1("../../conf/options-compat", OL_ALIAS);
}