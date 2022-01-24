#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xen_add_to_physmap {int gpfn; int /*<<< orphan*/  space; scalar_t__ idx; int /*<<< orphan*/  domid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct xen_add_to_physmap*) ; 
 int /*<<< orphan*/ * HYPERVISOR_shared_info ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_XENHVM ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  XENMAPSPACE_shared_info ; 
 int /*<<< orphan*/  XENMEM_add_to_physmap ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct xen_add_to_physmap xatp;

	if (FUNC4()) {
		/*
		 * Already setup in the PV case, shared_info is passed inside
		 * of the start_info struct at start of day.
		 */
		return;
	}

	if (HYPERVISOR_shared_info == NULL) {
		HYPERVISOR_shared_info = FUNC1(PAGE_SIZE, M_XENHVM, M_NOWAIT);
		if (HYPERVISOR_shared_info == NULL)
			FUNC2("Unable to allocate Xen shared info page");
	}

	xatp.domid = DOMID_SELF;
	xatp.idx = 0;
	xatp.space = XENMAPSPACE_shared_info;
	xatp.gpfn = FUNC3(HYPERVISOR_shared_info) >> PAGE_SHIFT;
	if (FUNC0(XENMEM_add_to_physmap, &xatp))
		FUNC2("HYPERVISOR_memory_op failed");
}