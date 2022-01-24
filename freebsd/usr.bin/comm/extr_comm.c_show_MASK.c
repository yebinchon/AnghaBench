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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 

__attribute__((used)) static void
FUNC4(FILE *fp, const char *fn, const char *offset, char **bufp, size_t *buflenp)
{
	ssize_t n;

	do {
		(void)FUNC3("%s%s\n", offset, *bufp);
		if ((n = FUNC2(bufp, buflenp, fp)) < 0)
			break;
		if (n > 0 && (*bufp)[n - 1] == '\n')
			(*bufp)[n - 1] = '\0';
	} while (1);
	if (FUNC1(fp))
		FUNC0(1, "%s", fn);
}