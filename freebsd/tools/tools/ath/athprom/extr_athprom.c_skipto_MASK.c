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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int MAXID ; 
 int bol ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lineno ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(FILE *fd, const char *what)
{
	char id[MAXID];
	int c;

	for (;;) {
		c = FUNC0(fd);
		if (c == EOF)
			goto bad;
		if (c == '.' && bol) {		/* .directive */
			if (FUNC2(fd, id, MAXID, ".directive") == EOF)
				goto bad;
			if (FUNC1(id, what) == 0)
				break;
			continue;
		}
		if (c == '\\') {		/* escape next character */
			c = FUNC0(fd);
			if (c == EOF)
				goto bad;
		}
		bol = (c == '\n');
		if (bol)
			lineno++;
	}
	return 0;
bad:
	FUNC3("EOF with no matching .%s", what);
	return EOF;
}