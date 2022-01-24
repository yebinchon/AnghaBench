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
typedef  scalar_t__ u_int ;
struct dmar_unit {scalar_t__ irte_cnt; } ;
struct dmar_qi_genseq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int DMAR_IQ_DESCR_IEC_IDX ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int DMAR_IQ_DESCR_IEC_INV ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_unit*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*,struct dmar_qi_genseq*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dmar_unit*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dmar_unit*,struct dmar_qi_genseq*,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

void
FUNC10(struct dmar_unit *unit, u_int start, u_int cnt)
{
	struct dmar_qi_genseq gseq;
	u_int c, l;

	FUNC0(unit);
	FUNC3(start < unit->irte_cnt && start < start + cnt &&
	    start + cnt <= unit->irte_cnt,
	    ("inv iec overflow %d %d %d", unit->irte_cnt, start, cnt));
	for (; cnt > 0; cnt -= c, start += c) {
		l = FUNC9(start | cnt) - 1;
		c = 1 << l;
		FUNC7(unit, 1);
		FUNC5(unit, DMAR_IQ_DESCR_IEC_INV |
		    DMAR_IQ_DESCR_IEC_IDX | FUNC1(start) |
		    FUNC2(l), 0);
	}
	FUNC7(unit, 1);
	FUNC6(unit, &gseq, true);
	FUNC4(unit);

	/*
	 * The caller of the function, in particular,
	 * dmar_ir_program_irte(), may be called from the context
	 * where the sleeping is forbidden (in fact, the
	 * intr_table_lock mutex may be held, locked from
	 * intr_shuffle_irqs()).  Wait for the invalidation completion
	 * using the busy wait.
	 *
	 * The impact on the interrupt input setup code is small, the
	 * expected overhead is comparable with the chipset register
	 * read.  It is more harmful for the parallel DMA operations,
	 * since we own the dmar unit lock until whole invalidation
	 * queue is processed, which includes requests possibly issued
	 * before our request.
	 */
	FUNC8(unit, &gseq, true);
}