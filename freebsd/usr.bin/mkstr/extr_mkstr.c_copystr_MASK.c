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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 () ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void
FUNC5(void)
{
	int c, ch;
	char buf[512];
	char *cp = buf;

	for (;;) {
		if (cp == buf + sizeof(buf) - 2)
			FUNC0(1, "message too long");
		c = FUNC1();
		if (c == EOF)
			break;
		switch (c) {

		case '"':
			*cp++ = 0;
			goto out;
		case '\\':
			c = FUNC1();
			switch (c) {

			case 'b':
				c = '\b';
				break;
			case 't':
				c = '\t';
				break;
			case 'r':
				c = '\r';
				break;
			case 'n':
				c = '\n';
				break;
			case '\n':
				continue;
			case 'f':
				c = '\f';
				break;
			case '0':
				c = 0;
				break;
			case '\\':
				break;
			default:
				if (!FUNC3(c))
					break;
				c -= '0';
				ch = FUNC1();
				if (!FUNC3(ch))
					break;
				c <<= 7, c += ch - '0';
				ch = FUNC1();
				if (!FUNC3(ch))
					break;
				c <<= 3, c+= ch - '0', ch = -1;
				break;
			}
		}
		*cp++ = c;
	}
out:
	*cp = 0;
	FUNC4("%d", FUNC2(buf, 1, 0));
}