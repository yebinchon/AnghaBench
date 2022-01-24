#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  u_int ;
struct vm_domain {int dummy; } ;
struct TYPE_6__ {int ref_count; int /*<<< orphan*/  oflags; int /*<<< orphan*/  flags; scalar_t__ aflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_ZERO ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 struct vm_domain* FUNC0 (int) ; 
 int /*<<< orphan*/  VM_FREEPOOL_DIRECT ; 
 int /*<<< orphan*/  VPO_UNMANAGED ; 
 scalar_t__ FUNC1 (struct vm_domain*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct vm_domain*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_domain*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

vm_page_t
FUNC10(int domain, int freelist, int req)
{
	struct vm_domain *vmd;
	vm_page_t m;
	u_int flags;

	m = NULL;
	vmd = FUNC0(domain);
again:
	if (FUNC2(vmd, req, 1)) {
		FUNC3(vmd);
		m = FUNC8(domain, freelist,
		    VM_FREEPOOL_DIRECT, 0);
		FUNC4(vmd);
		if (m == NULL)
			FUNC5(vmd, 1);
	}
	if (m == NULL) {
		if (FUNC1(vmd, NULL, req))
			goto again;
		return (NULL);
	}
	FUNC7(m);
	FUNC6(m);

	/*
	 * Initialize the page.  Only the PG_ZERO flag is inherited.
	 */
	m->aflags = 0;
	flags = 0;
	if ((req & VM_ALLOC_ZERO) != 0)
		flags = PG_ZERO;
	m->flags &= flags;
	if ((req & VM_ALLOC_WIRED) != 0) {
		/*
		 * The page lock is not required for wiring a page that does
		 * not belong to an object.
		 */
		FUNC9(1);
		m->ref_count = 1;
	}
	/* Unmanaged pages don't use "act_count". */
	m->oflags = VPO_UNMANAGED;
	return (m);
}