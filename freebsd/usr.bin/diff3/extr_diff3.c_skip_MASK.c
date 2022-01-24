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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int Tflag ; 
 int* cline ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * fp ; 
 char* FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static int
FUNC3(int i, int from, const char *pr)
{
	size_t j, n;
	char *line;

	for (n = 0; cline[i] < from - 1; n += j) {
		if ((line = FUNC1(fp[i], &j)) == NULL)
			FUNC0(EXIT_FAILURE, "logic error");
		if (pr != NULL)
			FUNC2("%s%s", Tflag == 1? "\t" : pr, line);
		cline[i]++;
	}
	return ((int) n);
}