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
struct TYPE_4__ {int /*<<< orphan*/  kobj_ref; int /*<<< orphan*/ * pools; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREE_ALL_PAGES ; 
 int NUM_POOLS ; 
 TYPE_1__* _manager ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(void)
{
	int i;

	FUNC0("[TTM] Finalizing pool allocator\n");
	FUNC4(_manager);

	for (i = 0; i < NUM_POOLS; ++i)
		FUNC2(&_manager->pools[i], FREE_ALL_PAGES);

	if (FUNC1(&_manager->kobj_ref))
		FUNC3(_manager);
	_manager = NULL;
}