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
struct var {int /*<<< orphan*/  v_value; int /*<<< orphan*/  v_name; struct var* v_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct var*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 struct var* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  sourcing ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct var** variables ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(void *v)
{
	char **arglist = v;
	struct var *vp, *vp2;
	int errs, h;
	char **ap;

	errs = 0;
	for (ap = arglist; *ap != NULL; ap++) {
		if ((vp2 = FUNC3(*ap)) == NULL) {
			if (FUNC1(*ap)) 
				FUNC5(*ap);
			else if (!sourcing) {
				FUNC4("\"%s\": undefined variable\n", *ap);
				errs++;
			}
			continue;
		}
		h = FUNC2(*ap);
		if (vp2 == variables[h]) {
			variables[h] = variables[h]->v_link;
			FUNC6(vp2->v_name);
			FUNC6(vp2->v_value);
			(void)FUNC0(vp2);
			continue;
		}
		for (vp = variables[h]; vp->v_link != vp2; vp = vp->v_link)
			;
		vp->v_link = vp2->v_link;
		FUNC6(vp2->v_name);
		FUNC6(vp2->v_value);
		(void)FUNC0(vp2);
	}
	return (errs);
}