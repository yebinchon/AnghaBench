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
typedef  int /*<<< orphan*/  y ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 

int
FUNC6(int argc, char **argv)
{
	char buf[8192];
	char y[2] = { 'y', '\n' };
	char * exp = y;
	size_t buflen = 0;
	size_t explen = sizeof(y);
	size_t more;
	ssize_t ret;

	if (FUNC1() < 0 || FUNC0() < 0)
		FUNC2(1, "capsicum");

	if (argc > 1) {
		exp = argv[1];
		explen = FUNC4(exp) + 1;
		exp[explen - 1] = '\n';
	}

	if (explen <= sizeof(buf)) {
		while (buflen < sizeof(buf) - explen) {
			FUNC3(buf + buflen, exp, explen);
			buflen += explen;
		}
		exp = buf;
		explen = buflen;
	}

	more = explen;
	while ((ret = FUNC5(STDOUT_FILENO, exp + (explen - more), more)) > 0)
		if ((more -= ret) == 0)
			more = explen;

	FUNC2(1, "stdout");
	/*NOTREACHED*/
}