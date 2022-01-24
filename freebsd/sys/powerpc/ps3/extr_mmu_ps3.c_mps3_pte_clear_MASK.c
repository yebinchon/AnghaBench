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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; } ;
struct lpte {int /*<<< orphan*/  pte_lo; int /*<<< orphan*/  pte_hi; } ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pvo_entry*,struct lpte*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvo_entry*) ; 
 int /*<<< orphan*/  mps3_table_lock ; 
 int /*<<< orphan*/  mps3_vas_id ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t
FUNC5(mmu_t mmu, struct pvo_entry *pvo, uint64_t ptebit)
{
	int64_t refchg;
	struct lpte pte;

	FUNC3(&mps3_table_lock);

	refchg = FUNC2(pvo);
	if (refchg < 0) {
		FUNC4(&mps3_table_lock);
		return (refchg);
	}

	FUNC1(pvo, &pte);

	pte.pte_lo |= refchg;
	pte.pte_lo &= ~ptebit;
	/* XXX: race on RC bits between write and sync. Anything to do? */
	FUNC0(mps3_vas_id, pvo->pvo_pte.slot, pte.pte_hi,
	    pte.pte_lo);
	FUNC4(&mps3_table_lock);

	return (refchg);
}