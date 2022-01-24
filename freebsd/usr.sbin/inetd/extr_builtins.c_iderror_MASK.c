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
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  MSG_EOF ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(int lport, int fport, int s, const char *er)
{
	char *p;

	FUNC0(&p, "%d , %d : ERROR : %s\r\n", lport, fport, er);
	if (p == NULL) {
		FUNC5(LOG_ERR, "asprintf: %m");
		FUNC1(EX_OSERR);
	}
	FUNC3(s, p, FUNC4(p), MSG_EOF);
	FUNC2(p);

	FUNC1(0);
}