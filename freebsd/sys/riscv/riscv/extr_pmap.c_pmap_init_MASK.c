#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  end; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2_SIZE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NPV_LIST_LOCKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  allpmaps_lock ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pagesizes ; 
 int /*<<< orphan*/  pv_chunks_mutex ; 
 TYPE_2__ pv_dummy ; 
 int /*<<< orphan*/ * pv_list_locks ; 
 struct md_page* pv_table ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ superpages_enabled ; 
 int vm_phys_nsegs ; 
 TYPE_1__* vm_phys_segs ; 

void
FUNC6(void)
{
	vm_size_t s;
	int i, pv_npg;

	/*
	 * Initialize the pv chunk and pmap list mutexes.
	 */
	FUNC3(&pv_chunks_mutex, "pmap pv chunk list", NULL, MTX_DEF);
	FUNC3(&allpmaps_lock, "allpmaps", NULL, MTX_DEF);

	/*
	 * Initialize the pool of pv list locks.
	 */
	for (i = 0; i < NPV_LIST_LOCKS; i++)
		FUNC5(&pv_list_locks[i], "pmap pv list");

	/*
	 * Calculate the size of the pv head table for superpages.
	 */
	pv_npg = FUNC1(vm_phys_segs[vm_phys_nsegs - 1].end, L2_SIZE);

	/*
	 * Allocate memory for the pv head table for superpages.
	 */
	s = (vm_size_t)(pv_npg * sizeof(struct md_page));
	s = FUNC4(s);
	pv_table = (struct md_page *)FUNC2(s, M_WAITOK | M_ZERO);
	for (i = 0; i < pv_npg; i++)
		FUNC0(&pv_table[i].pv_list);
	FUNC0(&pv_dummy.pv_list);

	if (superpages_enabled)
		pagesizes[1] = L2_SIZE;
}