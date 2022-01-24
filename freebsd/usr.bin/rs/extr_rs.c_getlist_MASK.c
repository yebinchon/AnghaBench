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
 short FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,short) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static char *
FUNC6(short **list, char *p)
{
	int count = 1;
	char *t;

	for (t = p + 1; *t; t++) {
		if (!FUNC3((unsigned char)*t))
			FUNC1(1,
	"option %.1s requires a list of unsigned numbers separated by commas", t);
		count++;
		while (*t && FUNC3((unsigned char)*t))
			t++;
		if (*t != ',')
			break;
	}
	if (!(*list = (short *) FUNC4(count * sizeof(short))))
		FUNC1(1, "no list space");
	count = 0;
	for (t = p + 1; *t; t++) {
		(*list)[count++] = FUNC0(t);
		FUNC5("++ %d ", (*list)[count-1]);
		FUNC2(stdout);
		while (*t && FUNC3((unsigned char)*t))
			t++;
		if (*t != ',')
			break;
	}
	(*list)[count] = 0;
	return(t - 1);
}