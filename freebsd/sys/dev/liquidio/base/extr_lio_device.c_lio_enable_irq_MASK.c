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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_instr_queue {int /*<<< orphan*/  inst_cnt_reg; int /*<<< orphan*/  lock; scalar_t__ pkt_in_done; struct octeon_device* oct_dev; } ;
struct lio_droq {int /*<<< orphan*/  pkts_sent_reg; int /*<<< orphan*/  lock; scalar_t__ pkt_count; int /*<<< orphan*/  pkts_pending; struct octeon_device* oct_dev; } ;

/* Variables and functions */
 int LIO_CN23XX_INTR_RESEND ; 
 scalar_t__ FUNC0 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct lio_droq *droq, struct lio_instr_queue *iq)
{
	struct octeon_device *oct = NULL;
	uint64_t	instr_cnt;
	uint32_t	pkts_pend;

	/* the whole thing needs to be atomic, ideally */
	if (droq != NULL) {
		oct = droq->oct_dev;
		pkts_pend = FUNC2(&droq->pkts_pending);
		FUNC6(&droq->lock);
		FUNC4(oct, droq->pkts_sent_reg,
				droq->pkt_count - pkts_pend);
		droq->pkt_count = pkts_pend;
		/* this write needs to be flushed before we release the lock */
		FUNC1();
		FUNC7(&droq->lock);
	}

	if (iq != NULL) {
		oct = iq->oct_dev;
		FUNC6(&iq->lock);
		FUNC4(oct, iq->inst_cnt_reg, iq->pkt_in_done);
		iq->pkt_in_done = 0;
		/* this write needs to be flushed before we release the lock */
		FUNC1();
		FUNC7(&iq->lock);
	}

	/*
	 * Implementation note:
	 *
	 * SLI_PKT(x)_CNTS[RESEND] is written separately so that if an interrupt
	 * DOES occur as a result of RESEND, the DROQ lock will NOT be held.
	 *
	 * Write resend. Writing RESEND in SLI_PKTX_CNTS should be enough
	 * to trigger tx interrupts as well, if they are pending.
	 */
	if ((oct != NULL) && (FUNC0(oct))) {
		if (droq != NULL)
			FUNC5(oct, droq->pkts_sent_reg,
					LIO_CN23XX_INTR_RESEND);
		/* we race with firmrware here. */
		/* read and write the IN_DONE_CNTS */
		else if (iq != NULL) {
			instr_cnt = FUNC3(oct, iq->inst_cnt_reg);
			FUNC5(oct, iq->inst_cnt_reg,
					((instr_cnt & 0xFFFFFFFF00000000ULL) |
					 LIO_CN23XX_INTR_RESEND));
		}
	}
}