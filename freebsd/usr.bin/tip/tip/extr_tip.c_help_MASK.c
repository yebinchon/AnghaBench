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
struct TYPE_3__ {int e_flags; char* e_help; scalar_t__ e_char; } ;
typedef  TYPE_1__ esctable_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESCAPE ; 
 int EXP ; 
 int PRIV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 TYPE_1__* etable ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ uid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(int c)
{
	esctable_t *p;

	FUNC2("%c\r\n", c);
	for (p = etable; p->e_char; p++) {
		if ((p->e_flags&PRIV) && uid)
			continue;
		FUNC2("%2s", FUNC1(FUNC0(FUNC3(ESCAPE))));
		FUNC2("%-2s %c   %s\r\n", FUNC1(p->e_char),
			p->e_flags&EXP ? '*': ' ', p->e_help);
	}
}