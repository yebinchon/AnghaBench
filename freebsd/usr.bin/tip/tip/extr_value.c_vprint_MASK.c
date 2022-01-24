#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* v_name; int v_type; int /*<<< orphan*/  v_value; } ;
typedef  TYPE_1__ value_t ;

/* Variables and functions */
#define  BOOL 131 
#define  CHAR 130 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MIDDLE ; 
#define  NUMBER 129 
#define  STRING 128 
 int TMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ col ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(value_t *p)
{
	char *cp;

	if (col > 0 && col < MIDDLE)
		while (col++ < MIDDLE)
			FUNC6(' ');
	col += FUNC7(p->v_name);
	switch (p->v_type&TMASK) {

	case BOOL:
		if (FUNC0(p->v_value) == FALSE) {
			col++;
			FUNC6('!');
		}
		FUNC5("%s", p->v_name);
		break;

	case STRING:
		FUNC5("%s=", p->v_name);
		col++;
		if (p->v_value) {
			cp = FUNC3(p->v_value);
			col += FUNC7(cp);
			FUNC5("%s", cp);
		}
		break;

	case NUMBER:
		col += 6;
		FUNC5("%s=%-5ld", p->v_name, FUNC4(p->v_value));
		break;

	case CHAR:
		FUNC5("%s=", p->v_name);
		col++;
		if (p->v_value) {
			cp = FUNC2(FUNC1(p->v_value));
			col += FUNC7(cp);
			FUNC5("%s", cp);
		}
		break;
	}
	if (col >= MIDDLE) {
		col = 0;
		FUNC5("\r\n");
		return;
	}
}