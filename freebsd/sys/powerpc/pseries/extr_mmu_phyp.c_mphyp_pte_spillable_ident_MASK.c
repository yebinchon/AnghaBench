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
typedef  uintptr_t uint64_t ;
struct lpte {int pte_hi; int pte_lo; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_READ ; 
 int LPTE_REF ; 
 int LPTE_VALID ; 
 int LPTE_WIRED ; 
 int /*<<< orphan*/  FUNC0 (struct lpte*,struct lpte*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,uintptr_t*) ; 

__attribute__((used)) static uintptr_t
FUNC3(uintptr_t ptegbase, struct lpte *to_evict)
{
	uint64_t slot, junk, k;
	struct lpte pt;
	int     i, j;

	/* Start at a random slot */
	i = FUNC1() % 8;
	k = -1;
	for (j = 0; j < 8; j++) {
		slot = ptegbase + (i + j) % 8;
		FUNC2(H_READ, 0, slot, 0, 0, &pt.pte_hi,
		    &pt.pte_lo, &junk);
		
		if (pt.pte_hi & LPTE_WIRED)
			continue;

		/* This is a candidate, so remember it */
		k = slot;

		/* Try to get a page that has not been used lately */
		if (!(pt.pte_hi & LPTE_VALID) || !(pt.pte_lo & LPTE_REF)) {
			FUNC0(to_evict, &pt, sizeof(struct lpte));
			return (k);
		}
	}

	if (k == -1)
		return (k);

	FUNC2(H_READ, 0, k, 0, 0, &to_evict->pte_hi,
	    &to_evict->pte_lo, &junk);
	return (k);
}