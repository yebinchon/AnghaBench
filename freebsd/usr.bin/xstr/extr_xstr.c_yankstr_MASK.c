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
typedef  int off_t ;
typedef  int /*<<< orphan*/  dbuf ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int) ; 
 char* linebuf ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static off_t
FUNC6(char **cpp)
{
	char *cp = *cpp;
	int c, ch;
	char dbuf[BUFSIZ];
	char *dp = dbuf;
	char *tp;
	static char tmp[] = "b\bt\tr\rn\nf\f\\\\\"\"";

	while ((c = *cp++)) {
		if (dp == dbuf + sizeof(dbuf) - 3)
			FUNC1(1, "message too long");
		switch (c) {

		case '"':
			cp++;
			goto out;

		case '\\':
			c = *cp++;
			if (c == 0)
				break;
			if (c == '\n') {
				if (FUNC3(linebuf, sizeof linebuf, stdin)
				    == NULL) {
					if (FUNC2(stdin))
						FUNC0(3, "x.c");
					return(-1);
				}
				cp = linebuf;
				continue;
			}
			for (tp = tmp; (ch = *tp++); tp++)
				if (c == ch) {
					c = *tp;
					goto gotc;
				}
			if (!FUNC5(c)) {
				*dp++ = '\\';
				break;
			}
			c -= '0';
			if (!FUNC5(*cp))
				break;
			c <<= 3, c += *cp++ - '0';
			if (!FUNC5(*cp))
				break;
			c <<= 3, c += *cp++ - '0';
			break;
		}
gotc:
		*dp++ = c;
	}
out:
	*cpp = --cp;
	*dp = 0;
	return (FUNC4(dbuf, 1));
}