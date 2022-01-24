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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int STACK_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*,int,void*,char const*,long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const**,long*) ; 

void
FUNC3(const struct stack *st)
{
	const char *name;
	long offset;
	int i;

	FUNC0(st->depth <= STACK_MAX, ("bogus stack"));
	for (i = 0; i < st->depth; i++) {
		FUNC2(st->pcs[i], &name, &offset);
		FUNC1("#%d %p at %s+%#lx\n", i, (void *)st->pcs[i],
		    name, offset);
	}
}