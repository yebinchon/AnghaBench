#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct rm_priotracker {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; int /*<<< orphan*/  pvo_pmap; } ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  H_CLEAR_MOD ; 
 int /*<<< orphan*/  H_CLEAR_REF ; 
 int H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LPTE_CHG ; 
 int LPTE_REF ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ brokenkvm ; 
 int /*<<< orphan*/  mphyp_eviction_lock ; 
 int FUNC2 (int /*<<< orphan*/ ,struct pvo_entry*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 

__attribute__((used)) static int64_t
FUNC6(mmu_t mmu, struct pvo_entry *pvo, uint64_t ptebit)
{
	struct rm_priotracker track;
	int64_t refchg;
	uint64_t ptelo, junk;
	int err;

	/*
	 * This involves two steps (synch and clear) so we need the entry
	 * not to change in the middle. We are protected against deliberate
	 * unset by virtue of holding the pmap lock. Protection against
	 * incidental unset (page table eviction) comes from holding the
	 * shared eviction lock.
	 */
	FUNC1(pvo->pvo_pmap, MA_OWNED);
	FUNC4(&mphyp_eviction_lock, &track);

	refchg = FUNC2(mmu, pvo);
	if (refchg < 0) {
		FUNC5(&mphyp_eviction_lock, &track);
		return (refchg);
	}

	if (brokenkvm) {
		/*
		 * No way to clear either bit, which is total madness.
		 * Pessimistically claim that, once modified, it stays so
		 * forever and that it is never referenced.
		 */
		FUNC5(&mphyp_eviction_lock, &track);
		return (refchg & ~LPTE_REF);
	}

	if (ptebit & LPTE_CHG) {
		err = FUNC3(H_CLEAR_MOD, 0, pvo->pvo_pte.slot, 0, 0,
		    &ptelo, &junk, &junk);
		FUNC0(err == H_SUCCESS,
		    ("Error clearing page change bit: %d", err));
		refchg |= (ptelo & LPTE_CHG);
	}
	if (ptebit & LPTE_REF) {
		err = FUNC3(H_CLEAR_REF, 0, pvo->pvo_pte.slot, 0, 0,
		    &ptelo, &junk, &junk);
		FUNC0(err == H_SUCCESS,
		    ("Error clearing page reference bit: %d", err));
		refchg |= (ptelo & LPTE_REF);
	}

	FUNC5(&mphyp_eviction_lock, &track);

	return (refchg);
}