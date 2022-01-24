#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_7__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_6__ {int flags; TYPE_4__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int PG_FICTITIOUS ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct md_page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(pmap_t pmap, vm_page_t m, vm_offset_t va)
{
	struct md_page *pvh;

	FUNC4(&pvh_global_lock, RA_WLOCKED);
	FUNC3(&m->md, pmap, va);
	if (FUNC0(&m->md.pv_list) && (m->flags & PG_FICTITIOUS) == 0) {
		pvh = FUNC2(FUNC1(m));
		if (FUNC0(&pvh->pv_list))
			FUNC5(m, PGA_WRITEABLE);
	}
}