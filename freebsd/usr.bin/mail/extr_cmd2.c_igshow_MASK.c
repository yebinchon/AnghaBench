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
struct ignoretab {int /*<<< orphan*/  i_count; struct ignore** i_head; } ;
struct ignore {int /*<<< orphan*/  i_field; struct ignore* i_link; } ;

/* Variables and functions */
 int HSHSIZE ; 
 int /*<<< orphan*/  igcomp ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

int
FUNC3(struct ignoretab *tab, const char *which)
{
	int h;
	struct ignore *igp;
	char **ap, **ring;

	if (tab->i_count == 0) {
		FUNC0("No fields currently being %s.\n", which);
		return (0);
	}
	ring = (char **)FUNC2((tab->i_count + 1) * sizeof(char *));
	ap = ring;
	for (h = 0; h < HSHSIZE; h++)
		for (igp = tab->i_head[h]; igp != NULL; igp = igp->i_link)
			*ap++ = igp->i_field;
	*ap = 0;
	FUNC1(ring, tab->i_count, sizeof(char *), igcomp);
	for (ap = ring; *ap != 0; ap++)
		FUNC0("%s\n", *ap);
	return (0);
}