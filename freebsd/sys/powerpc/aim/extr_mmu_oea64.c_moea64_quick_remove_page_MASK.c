#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_2__ {int /*<<< orphan*/  qmap_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ aim ; 
 scalar_t__ hw_direct_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qmap_addr ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(mmu_t mmu, vm_offset_t addr)
{
	if (hw_direct_map)
		return;

	FUNC3(FUNC2(aim.qmap_lock), MA_OWNED);
	FUNC0(FUNC1(qmap_addr) == addr,
	    ("moea64_quick_remove_page: invalid address"));
	FUNC4(FUNC2(aim.qmap_lock));
	FUNC5();	
}