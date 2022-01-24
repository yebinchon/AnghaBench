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
struct stack {int depth; scalar_t__* pcs; } ;
typedef  int /*<<< orphan*/  namebuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int STACK_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,int,long*,int /*<<< orphan*/ ) ; 

void
FUNC3(const struct stack *st)
{
	char namebuf[64];
	long offset;
	int i;

	FUNC0(st->depth <= STACK_MAX, ("bogus stack"));
	for (i = 0; i < st->depth; i++) {
		if (i > 0)
			FUNC1(" ");
		if (FUNC2(st->pcs[i], namebuf, sizeof(namebuf),
		    &offset, M_WAITOK) == 0)
			FUNC1("%s+%#lx", namebuf, offset);
		else
			FUNC1("%p", (void *)st->pcs[i]);
	}
	FUNC1("\n");
}