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
typedef  size_t uint32_t ;
struct TYPE_2__ {scalar_t__ pf_srn; } ;
struct octeon_device {scalar_t__ msix_on; TYPE_1__ sriov_info; struct lio_instr_queue** instr_queue; } ;
struct lio_instr_queue {int base_addr_dma; scalar_t__ reset_instr_cnt; int /*<<< orphan*/  inst_cnt_reg; int /*<<< orphan*/  doorbell_reg; int /*<<< orphan*/  max_count; } ;

/* Variables and functions */
 int LIO_CN23XX_INTR_CINT_ENB ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct octeon_device *oct, uint32_t iq_no)
{
	struct lio_instr_queue	*iq = oct->instr_queue[iq_no];
	uint64_t		pkt_in_done;

	iq_no += oct->sriov_info.pf_srn;

	/* Write the start of the input queue's ring and its size  */
	FUNC7(oct, FUNC0(iq_no),
			iq->base_addr_dma);
	FUNC6(oct, FUNC3(iq_no), iq->max_count);

	/*
	 * Remember the doorbell & instruction count register addr
	 * for this queue
	 */
	iq->doorbell_reg = FUNC1(iq_no);
	iq->inst_cnt_reg = FUNC2(iq_no);
	FUNC4(oct, "InstQ[%d]:dbell reg @ 0x%x instcnt_reg @ 0x%x\n",
		    iq_no, iq->doorbell_reg, iq->inst_cnt_reg);

	/*
	 * Store the current instruction counter (used in flush_iq
	 * calculation)
	 */
	pkt_in_done = FUNC5(oct, iq->inst_cnt_reg);

	if (oct->msix_on) {
		/* Set CINT_ENB to enable IQ interrupt   */
		FUNC7(oct, iq->inst_cnt_reg,
				(pkt_in_done | LIO_CN23XX_INTR_CINT_ENB));
	} else {
		/*
		 * Clear the count by writing back what we read, but don't
		 * enable interrupts
		 */
		FUNC7(oct, iq->inst_cnt_reg, pkt_in_done);
	}

	iq->reset_instr_cnt = 0;
}