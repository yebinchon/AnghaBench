#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vm_page_t ;
struct spglist {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ss; } ;
struct TYPE_4__ {TYPE_1__ s; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct spglist*) ; 
 int /*<<< orphan*/ * FUNC1 (struct spglist*) ; 
 int /*<<< orphan*/  FUNC2 (struct spglist*,int /*<<< orphan*/ ) ; 
 TYPE_2__ plinks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(struct spglist *free, bool update_wire_count)
{
	vm_page_t m;
	int count;

	if (FUNC0(free))
		return;

	count = 0;
	while ((m = FUNC1(free)) != NULL) {
		count++;
		FUNC2(free, plinks.s.ss);
		FUNC3(m);
	}

	if (update_wire_count)
		FUNC4(count);
}