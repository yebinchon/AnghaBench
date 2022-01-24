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
struct TYPE_2__ {int /*<<< orphan*/  slot; } ;
struct pvo_entry {TYPE_1__ pvo_pte; } ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int int64_t ;

/* Variables and functions */
 int LPTE_CHG ; 
 int LPTE_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  moea64_pte_overflow ; 
 int /*<<< orphan*/  moea64_pte_valid ; 
 int FUNC2 (struct pvo_entry*) ; 
 int /*<<< orphan*/  mps3_table_lock ; 
 int /*<<< orphan*/  mps3_vas_id ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t
FUNC5(mmu_t mmu, struct pvo_entry *pvo)
{
	int64_t refchg;

	FUNC3(&mps3_table_lock);
	refchg = FUNC2(pvo);
	if (refchg < 0) {
		FUNC0(moea64_pte_overflow--);
		FUNC4(&mps3_table_lock);
		return (-1);
	}
	/* XXX: race on RC bits between unset and sync. Anything to do? */
	FUNC1(mps3_vas_id, pvo->pvo_pte.slot, 0, 0);
	FUNC4(&mps3_table_lock);
	FUNC0(moea64_pte_valid--);

	return (refchg & (LPTE_REF | LPTE_CHG));
}