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
 int /*<<< orphan*/  FUNC0 () ; 
 int clear_ok ; 
 char* gbuf ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  opt_interactive ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  tbuf ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*,char**) ; 

__attribute__((used)) static void
FUNC5(void)
{
	char		*cbuf = gbuf, *term;

	if (!opt_interactive)
		return;
	if ((term = FUNC1("TERM")))
		if (FUNC3(tbuf, term) == 1)
			if (FUNC4("cl", &cbuf))
				clear_ok = 1;
	FUNC2();
	FUNC0();
}