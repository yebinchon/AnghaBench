#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  v_access; scalar_t__ v_name; } ;
typedef  TYPE_1__ value_t ;

/* Variables and functions */
 int /*<<< orphan*/  READ ; 
 scalar_t__ col ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* vtable ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6(char *s)
{
	value_t *p;
	char *cp;

	if (FUNC0(s, "all")) {
		for (p = vtable; p->v_name; p++)
			if (FUNC2(p->v_access, READ))
				FUNC4(p);
	} else {
		do {
			if ((cp = FUNC3(s, ' ')))
				cp++;
			FUNC5(s);
			s = cp;
		} while (s);
	}
	if (col > 0) {
		FUNC1("\r\n");
		col = 0;
	}
}