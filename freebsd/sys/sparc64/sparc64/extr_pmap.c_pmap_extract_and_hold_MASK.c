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
typedef  int vm_prot_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct tte {int tte_data; } ;
typedef  scalar_t__ pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int TD_SW ; 
 int TD_V ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tte*) ; 
 int /*<<< orphan*/  VM_MIN_DIRECT_ADDRESS ; 
 int VM_PROT_WRITE ; 
 scalar_t__ kernel_pmap ; 
 struct tte* FUNC5 (int /*<<< orphan*/ ) ; 
 struct tte* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

vm_page_t
FUNC8(pmap_t pm, vm_offset_t va, vm_prot_t prot)
{
	struct tte *tp;
	vm_page_t m;

	m = NULL;
	FUNC1(pm);
	if (pm == kernel_pmap) {
		if (va >= VM_MIN_DIRECT_ADDRESS) {
			tp = NULL;
			m = FUNC0(FUNC3(va));
			if (!FUNC7(m))
				m = NULL;
		} else {
			tp = FUNC5(va);
			if ((tp->tte_data & TD_V) == 0)
				tp = NULL;
		}
	} else
		tp = FUNC6(pm, va);
	if (tp != NULL && ((tp->tte_data & TD_SW) ||
	    (prot & VM_PROT_WRITE) == 0)) {
		m = FUNC0(FUNC4(tp));
		if (!FUNC7(m))
			m = NULL;
	}
	FUNC2(pm);
	return (m);
}