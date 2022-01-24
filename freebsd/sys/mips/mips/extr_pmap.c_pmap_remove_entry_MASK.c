#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_6__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_5__ {TYPE_4__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(pmap_t pmap, vm_page_t m, vm_offset_t va)
{

	FUNC2(&pvh_global_lock, RA_WLOCKED);
	FUNC1(&m->md, pmap, va);
	if (FUNC0(&m->md.pv_list))
		FUNC3(m, PGA_WRITEABLE);
}