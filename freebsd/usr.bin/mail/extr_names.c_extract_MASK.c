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
struct name {struct name* n_blink; struct name* n_flink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__) ; 
 struct name* FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 

struct name *
FUNC6(char *line, int ntype)
{
	char *cp, *nbuf;
	struct name *top, *np, *t;

	if (line == NULL || *line == '\0')
		return (NULL);
	if ((nbuf = FUNC2(FUNC4(line) + 1)) == NULL)
		FUNC0(1, "Out of memory");
	top = NULL;
	np = NULL;
	cp = line;
	while ((cp = FUNC5(cp, nbuf)) != NULL) {
		t = FUNC3(nbuf, ntype);
		if (top == NULL)
			top = t;
		else
			np->n_flink = t;
		t->n_blink = np;
		np = t;
	}
	(void)FUNC1(nbuf);
	return (top);
}