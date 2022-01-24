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
struct ignore {struct ignore* i_link; void* i_field; } ;
typedef  int /*<<< orphan*/  field ;

/* Variables and functions */
 int LINESIZE ; 
 void* FUNC0 (unsigned int,int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (struct ignoretab*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (char*,struct ignoretab*) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 

int
FUNC7(char **list, struct ignoretab *tab, const char *which)
{
	char field[LINESIZE];
	char **ap;
	struct ignore *igp;
	int h;

	if (*list == NULL)
		return (FUNC2(tab, which));
	for (ap = list; *ap != 0; ap++) {
		FUNC3(field, *ap, sizeof(field));
		if (FUNC4(field, tab))
			continue;
		h = FUNC1(field);
		igp = FUNC0(1, sizeof(struct ignore));
		igp->i_field = FUNC0((unsigned)FUNC6(field) + 1,
		    sizeof(char));
		FUNC5(igp->i_field, field);
		igp->i_link = tab->i_head[h];
		tab->i_head[h] = igp;
		tab->i_count++;
	}
	return (0);
}