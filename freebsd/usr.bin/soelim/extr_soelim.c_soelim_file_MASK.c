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
 int C_OPTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC7(FILE *f, int flag)
{
	char *line = NULL;
	char *walk, *cp;
	size_t linecap = 0;
	ssize_t linelen;

	if (f == NULL)
		return (1);

	while ((linelen = FUNC2(&line, &linecap, f)) > 0) {
		if (FUNC6(line, ".so", 3) != 0) {
			FUNC4("%s", line);
			continue;
		}

		walk = line + 3;
		if (!FUNC3(*walk) && ((flag & C_OPTION) == 0)) {
			FUNC4("%s", line);
			continue;
		}

		while (FUNC3(*walk))
			walk++;

		cp = walk;
		while (*cp != '\0' && !FUNC3(*cp))
			cp++;
		*cp = 0;
		if (cp < line + linelen)
			cp++;

		if (*walk == '\0') {
			FUNC4("%s", line);
			continue;
		}
		if (FUNC7(FUNC5(walk), flag) == 1) {
			FUNC1(line);
			return (1);
		}
		if (*cp != '\0')
			FUNC4("%s", cp);
	}

	FUNC1(line);
	FUNC0(f);

	return (0);
}