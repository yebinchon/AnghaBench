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
typedef  int vm_offset_t ;
struct pmap {int dummy; } ;
typedef  int register_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int TLBHI_ASID_MASK ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLBLO_SWBITS_MASK ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pmap*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

void
FUNC13(struct pmap *pmap, vm_offset_t va, pt_entry_t pte)
{
	register_t asid;
	register_t s;
	int i;

	va &= ~PAGE_MASK;
	pte &= ~TLBLO_SWBITS_MASK;

	s = FUNC1();
	asid = FUNC3() & TLBHI_ASID_MASK;

	FUNC8(0);
	FUNC5(FUNC0(va, FUNC9(pmap)));
	FUNC10();
	i = FUNC4();
	if (i >= 0) {
		FUNC11();

		if ((va & PAGE_SIZE) == 0) {
			FUNC6(pte);
		} else {
			FUNC7(pte);
		}
		FUNC12();
	}

	FUNC5(asid);
	FUNC2(s);
}