#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_5__ {scalar_t__ resident_count; } ;
struct TYPE_6__ {scalar_t__ pm_l1; int /*<<< orphan*/  pm_active; TYPE_1__ pm_stats; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allpmaps_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pm_list ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(pmap_t pmap)
{
	vm_page_t m;

	FUNC2(pmap->pm_stats.resident_count == 0,
	    ("pmap_release: pmap resident count %ld != 0",
	    pmap->pm_stats.resident_count));
	FUNC2(FUNC0(&pmap->pm_active),
	    ("releasing active pmap %p", pmap));

	FUNC5(&allpmaps_lock);
	FUNC3(pmap, pm_list);
	FUNC6(&allpmaps_lock);

	m = FUNC4(FUNC1((vm_offset_t)pmap->pm_l1));
	FUNC8(m);
	FUNC7(m);
}