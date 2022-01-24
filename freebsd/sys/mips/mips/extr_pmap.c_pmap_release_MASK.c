#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_4__ {scalar_t__ resident_count; } ;
struct TYPE_5__ {scalar_t__ pm_segtab; TYPE_1__ pm_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(pmap_t pmap)
{
	vm_offset_t ptdva;
	vm_page_t ptdpg;

	FUNC0(pmap->pm_stats.resident_count == 0,
	    ("pmap_release: pmap resident count %ld != 0",
	    pmap->pm_stats.resident_count));

	ptdva = (vm_offset_t)pmap->pm_segtab;
	ptdpg = FUNC2(FUNC1(ptdva));

	FUNC4(ptdpg);
	FUNC3(ptdpg);
}