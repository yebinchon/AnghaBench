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
 int FUNC0 (char) ; 
 scalar_t__ EOF ; 
 char** av ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC4 (char,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,int,int /*<<< orphan*/ ) ; 
 int mode ; 
 int /*<<< orphan*/  output ; 
 int /*<<< orphan*/  raw ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static void
FUNC6(void)
{
	register int ch, n;
	register char *p;
	char buf[80];

	if (!raw)
		(void)FUNC3(output, "begin %o %s\n", mode, *av);
	while ((n = FUNC5(buf, 1, 45, stdin))) {
		ch = FUNC0(n);
		if (FUNC4(ch, output) == EOF)
			break;
		for (p = buf; n > 0; n -= 3, p += 3) {
			/* Pad with nulls if not a multiple of 3. */
			if (n < 3) {
				p[2] = '\0';
				if (n < 2)
					p[1] = '\0';
			}
			ch = *p >> 2;
			ch = FUNC0(ch);
			if (FUNC4(ch, output) == EOF)
				break;
			ch = ((*p << 4) & 060) | ((p[1] >> 4) & 017);
			ch = FUNC0(ch);
			if (FUNC4(ch, output) == EOF)
				break;
			ch = ((p[1] << 2) & 074) | ((p[2] >> 6) & 03);
			ch = FUNC0(ch);
			if (FUNC4(ch, output) == EOF)
				break;
			ch = p[2] & 077;
			ch = FUNC0(ch);
			if (FUNC4(ch, output) == EOF)
				break;
		}
		if (FUNC4('\n', output) == EOF)
			break;
	}
	if (FUNC2(stdin))
		FUNC1(1, "read error");
	if (!raw)
		(void)FUNC3(output, "%c\nend\n", FUNC0('\0'));
}