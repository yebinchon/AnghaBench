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
struct var {void* v_value; struct var* v_link; void* v_name; } ;

/* Variables and functions */
 struct var* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char const*) ; 
 struct var* FUNC3 (char const*) ; 
 struct var** variables ; 
 void* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

void
FUNC6(const char *name, const char *value)
{
	struct var *vp;
	int h;

	h = FUNC2(name);
	vp = FUNC3(name);
	if (vp == NULL) {
		if ((vp = FUNC0(1, sizeof(*vp))) == NULL)
			FUNC1(1, "Out of memory");
		vp->v_name = FUNC4(name);
		vp->v_link = variables[h];
		variables[h] = vp;
	}
	else
		FUNC5(vp->v_value);
	vp->v_value = FUNC4(value);
}