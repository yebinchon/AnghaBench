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
struct name {int n_type; struct name* n_flink; int /*<<< orphan*/  n_name; } ;

/* Variables and functions */
 int GCOMMA ; 
 int GMASK ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

char *
FUNC4(struct name *np, int ntype)
{
	int s, comma;
	char *cp, *top;
	struct name *p;

	comma = ntype & GCOMMA;
	if (np == NULL)
		return (NULL);
	ntype &= ~GCOMMA;
	s = 0;
	if (debug && comma)
		FUNC0(stderr, "detract asked to insert commas\n");
	for (p = np; p != NULL; p = p->n_flink) {
		if (ntype && (p->n_type & GMASK) != ntype)
			continue;
		s += FUNC3(p->n_name) + 1;
		if (comma)
			s++;
	}
	if (s == 0)
		return (NULL);
	s += 2;
	top = FUNC1(s);
	cp = top;
	for (p = np; p != NULL; p = p->n_flink) {
		if (ntype && (p->n_type & GMASK) != ntype)
			continue;
		cp += FUNC2(cp, p->n_name, FUNC3(p->n_name) + 1);
		if (comma && p->n_flink != NULL)
			*cp++ = ',';
		*cp++ = ' ';
	}
	*--cp = '\0';
	if (comma && *--cp == ',')
		*cp = '\0';
	return (top);
}