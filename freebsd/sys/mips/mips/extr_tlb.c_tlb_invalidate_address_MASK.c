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
struct pmap {int dummy; } ;
typedef  int register_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_MASK ; 
 int TLBHI_ASID_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pmap*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(struct pmap *pmap, vm_offset_t va)
{
	register_t asid;
	register_t s;
	int i;

	va &= ~PAGE_MASK;

	s = FUNC1();
	asid = FUNC3() & TLBHI_ASID_MASK;

	FUNC6(0);
	FUNC5(FUNC0(va, FUNC7(pmap)));
	FUNC9();
	i = FUNC4();
	if (i >= 0)
		FUNC8(i);

	FUNC5(asid);
	FUNC2(s);
}