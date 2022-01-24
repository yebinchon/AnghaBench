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
 int BUFSIZ ; 
 scalar_t__ EOF ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC6(int argc, char **argv)
{
	int len, count;
	register int i, j, fc, nc;
	char outbuf[BUFSIZ];

	FUNC5(stdout, outbuf);
	if (argc >= 2)
		len = FUNC0(argv[1]);
	else
		len = 79;
	if (argc >= 3)
		count = FUNC0(argv[2]);
	else
		count = 200;
	fc = ' ';
	for (i = 0; i < count; i++) {
		if (++fc == 0177)
			fc = ' ';
		nc = fc;
		for (j = 0; j < len; j++) {
			if (FUNC4(nc) == EOF)
				FUNC1(1, "Write error");
			if (++nc == 0177)
				nc = ' ';
		}
		if (FUNC4('\n') == EOF)
			FUNC1(1, "Write error");
	}
	(void) FUNC3(stdout);
	FUNC2(0);
}