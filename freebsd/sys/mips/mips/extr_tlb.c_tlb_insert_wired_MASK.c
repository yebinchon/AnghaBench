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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int register_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_MASK ; 
 int TLBHI_ASID_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(unsigned i, vm_offset_t va, pt_entry_t pte0, pt_entry_t pte1)
{
	register_t asid;
	register_t s;

	va &= ~PAGE_MASK;

	s = FUNC1();
	asid = FUNC3() & TLBHI_ASID_MASK;

	FUNC7(i);
	FUNC8(0);
	FUNC4(FUNC0(va, 0));
	FUNC5(pte0);
	FUNC6(pte1);
	FUNC9();

	FUNC4(asid);
	FUNC2(s);
}