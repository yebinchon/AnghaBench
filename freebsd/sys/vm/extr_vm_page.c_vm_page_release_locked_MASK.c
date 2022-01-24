#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct TYPE_12__ {int oflags; scalar_t__ dirty; TYPE_10__* object; } ;
struct TYPE_11__ {scalar_t__ ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*) ; 
 int VPO_UNMANAGED ; 
 int VPR_TRYFREE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

void
FUNC9(vm_page_t m, int flags)
{

	FUNC1(m->object);
	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("vm_page_release_locked: page %p is unmanaged", m));

	if (FUNC8(m)) {
		if ((flags & VPR_TRYFREE) != 0 &&
		    (m->object->ref_count == 0 || !FUNC2(m)) &&
		    m->dirty == 0 && !FUNC3(m)) {
			FUNC4(m);
		} else {
			FUNC5(m);
			FUNC6(m, flags);
			FUNC7(m);
		}
	}
}