#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int v_type; int /*<<< orphan*/  v_access; } ;
typedef  TYPE_1__ value_t ;

/* Variables and functions */
 TYPE_1__* NOVAL ; 
 int NUMBER ; 
 int /*<<< orphan*/  READ ; 
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(char *s)
{
	value_t *p;
	char *cp;

	if ((cp = FUNC3(s, '='))) {
		*cp = '\0';
		if ((p = FUNC7(s))) {
			cp++;
			if (p->v_type&NUMBER)
				FUNC6(p, (char *)(intptr_t)FUNC0(cp));
			else {
				if (FUNC4(s, "record") == 0)
					cp = FUNC1(cp);
				FUNC6(p, cp);
			}
			return;
		}
	} else if ((cp = FUNC3(s, '?'))) {
		*cp = '\0';
		if ((p = FUNC7(s)) && FUNC5(p->v_access, READ)) {
			FUNC8(p);
			return;
		}
	} else {
		if (*s != '!')
			p = FUNC7(s);
		else
			p = FUNC7(s+1);
		if (p != NOVAL) {
			FUNC6(p, s);
			return;
		}
	}
	FUNC2("%s: unknown variable\r\n", s);
}