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
 scalar_t__ bol ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC4(FILE *fd, char id[], int maxid, const char *what)
{
	int c, i;

	i = 0;
	for (;;) {
		c = FUNC0(fd);
		if (c == EOF)
			return EOF;
		if (!FUNC1(c) && c != '_') {
			FUNC2(c, fd);
			break;
		}
		if (i == maxid-1) {
			FUNC3("line %d, %s too long", lineno, what);
			break;
		}
		id[i++] = c;
	}
	id[i] = '\0';
	if (i != 0)
		bol = 0;
	return i;
}