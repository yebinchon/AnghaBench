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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct dmar_unit {int hw_cap; int qi_enabled; int inv_waitd_seq; unsigned long long inv_queue_size; int /*<<< orphan*/  inv_queue; int /*<<< orphan*/  inv_waitd_seq_hw; void* inv_waitd_seq_hw_phys; scalar_t__ inv_queue_avail; scalar_t__ inv_waitd_gen; int /*<<< orphan*/  unit; int /*<<< orphan*/  qi_taskqueue; int /*<<< orphan*/  qi_task; int /*<<< orphan*/  tlb_flush_entries; } ;

/* Variables and functions */
 int DMAR_CAP_CM ; 
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int DMAR_ICS_IWC ; 
 int /*<<< orphan*/  DMAR_ICS_REG ; 
 int DMAR_IQA_QS_DEF ; 
 int DMAR_IQA_QS_MAX ; 
 int /*<<< orphan*/  DMAR_IQA_REG ; 
 int /*<<< orphan*/  DMAR_IQT_REG ; 
 scalar_t__ DMAR_IQ_DESCR_SZ ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 unsigned long long PAGE_SIZE ; 
 int /*<<< orphan*/  PI_AV ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC7 (struct dmar_unit*) ; 
 int /*<<< orphan*/  dmar_high ; 
 int /*<<< orphan*/  dmar_qi_task ; 
 int FUNC8 (struct dmar_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dmar_unit*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dmar_unit*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

int
FUNC15(struct dmar_unit *unit)
{
	uint64_t iqa;
	uint32_t ics;
	int qi_sz;

	if (!FUNC0(unit) || (unit->hw_cap & DMAR_CAP_CM) != 0)
		return (0);
	unit->qi_enabled = 1;
	FUNC5("hw.dmar.qi", &unit->qi_enabled);
	if (!unit->qi_enabled)
		return (0);

	FUNC3(&unit->tlb_flush_entries);
	FUNC4(&unit->qi_task, 0, dmar_qi_task, unit);
	unit->qi_taskqueue = FUNC13("dmarqf", M_WAITOK,
	    taskqueue_thread_enqueue, &unit->qi_taskqueue);
	FUNC14(&unit->qi_taskqueue, 1, PI_AV,
	    "dmar%d qi taskq", unit->unit);

	unit->inv_waitd_gen = 0;
	unit->inv_waitd_seq = 1;

	qi_sz = DMAR_IQA_QS_DEF;
	FUNC5("hw.dmar.qi_size", &qi_sz);
	if (qi_sz > DMAR_IQA_QS_MAX)
		qi_sz = DMAR_IQA_QS_MAX;
	unit->inv_queue_size = (1ULL << qi_sz) * PAGE_SIZE;
	/* Reserve one descriptor to prevent wraparound. */
	unit->inv_queue_avail = unit->inv_queue_size - DMAR_IQ_DESCR_SZ;

	/* The invalidation queue reads by DMARs are always coherent. */
	unit->inv_queue = FUNC11(unit->inv_queue_size, M_WAITOK |
	    M_ZERO, 0, dmar_high, PAGE_SIZE, 0, VM_MEMATTR_DEFAULT);
	unit->inv_waitd_seq_hw_phys = FUNC12(
	    (vm_offset_t)&unit->inv_waitd_seq_hw);

	FUNC1(unit);
	FUNC10(unit, DMAR_IQT_REG, 0);
	iqa = FUNC12(unit->inv_queue);
	iqa |= qi_sz;
	FUNC10(unit, DMAR_IQA_REG, iqa);
	FUNC6(unit);
	ics = FUNC8(unit, DMAR_ICS_REG);
	if ((ics & DMAR_ICS_IWC) != 0) {
		ics = DMAR_ICS_IWC;
		FUNC9(unit, DMAR_ICS_REG, ics);
	}
	FUNC7(unit);
	FUNC2(unit);

	return (0);
}