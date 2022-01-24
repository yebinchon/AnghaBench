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
typedef  int /*<<< orphan*/  pwd2 ;
typedef  int /*<<< orphan*/  pwd1 ;

/* Variables and functions */
 int EX_OK ; 
 int EX_USAGE ; 
 int /*<<< orphan*/  OFWO_MAXPWD ; 
 int RPP_ECHO_OFF ; 
 int RPP_REQUIRE_TTY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,int,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(int fd)
{
	char pwd1[OFWO_MAXPWD + 1], pwd2[OFWO_MAXPWD + 1];

	if (FUNC4("New password:", pwd1, sizeof(pwd1),
	    RPP_ECHO_OFF | RPP_REQUIRE_TTY) == NULL ||
	    FUNC4("Retype new password:", pwd2, sizeof(pwd2),
	    RPP_ECHO_OFF | RPP_REQUIRE_TTY) == NULL)
		FUNC0(EX_USAGE, "failed to get password.");
	if (FUNC6(pwd1) == 0) {
		FUNC3("Password unchanged.\n");
		return (EX_OK);
	}
	if (FUNC5(pwd1, pwd2) != 0) {
		FUNC3("Mismatch - password unchanged.\n");
		return (EX_USAGE);
	}
	FUNC2(fd, FUNC1(fd), "security-password", pwd1,
	    FUNC6(pwd1) + 1);
	return (EX_OK);
}