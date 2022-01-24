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
struct TYPE_4__ {struct TYPE_4__* e_next; int /*<<< orphan*/  (* execute ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ PLAN ;

/* Variables and functions */
 TYPE_1__* lastexecplus ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void
FUNC1(void)
{
	PLAN *p;

	p = lastexecplus;
	while (p != NULL) {
		(p->execute)(p, NULL);
		p = p->e_next;
	}
}