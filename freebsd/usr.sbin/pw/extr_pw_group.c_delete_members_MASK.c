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
struct group {int /*<<< orphan*/ ** gr_mem; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct group *grp, char *list)
{
	char *p;
	int k;

	if (grp->gr_mem == NULL)
		return;

	for (p = FUNC1(list, ", \t"); p != NULL; p = FUNC1(NULL, ", \t")) {
		for (k = 0; grp->gr_mem[k] != NULL; k++) {
			if (FUNC0(grp->gr_mem[k], p) == 0)
				break;
		}
		if (grp->gr_mem[k] == NULL) /* No match */
			continue;

		for (; grp->gr_mem[k] != NULL; k++)
			grp->gr_mem[k] = grp->gr_mem[k+1];
	}
}