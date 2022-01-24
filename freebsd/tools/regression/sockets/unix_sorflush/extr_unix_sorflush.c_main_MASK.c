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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int
FUNC10(void)
{
	pid_t pida, pidb;
	int sv[2];

	if (FUNC8(PF_LOCAL, SOCK_STREAM, 0, sv) < 0)
		FUNC0(-1, "socketpair");

	pida = FUNC2();
	if (pida < 0)
		FUNC0(-1, "fork");
	if (pida == 0)
		FUNC5(sv[1]);
	FUNC7(1);
	pidb = FUNC2();
	if (pidb < 0) {
		FUNC9("fork");
		(void)FUNC3(pida, SIGKILL);
		FUNC1(-1);
	}
	if (pidb == 0)
		FUNC6(sv[1]);
	FUNC7(1);
	if (FUNC3(pidb, SIGKILL) < 0)
		FUNC0(-1, "kill");
	FUNC7(1);
	FUNC4("ok 1 - unix_sorflush\n");
	FUNC1(0);
}