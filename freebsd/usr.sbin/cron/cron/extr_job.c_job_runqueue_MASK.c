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
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  u; int /*<<< orphan*/  e; } ;
typedef  TYPE_1__ job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* jhead ; 
 int /*<<< orphan*/ * jtail ; 

int
FUNC2()
{
	register job	*j, *jn;
	register int	run = 0;

	for (j=jhead; j; j=jn) {
		FUNC0(j->e, j->u);
		jn = j->next;
		FUNC1(j);
		run++;
	}
	jhead = jtail = NULL;
	return run;
}