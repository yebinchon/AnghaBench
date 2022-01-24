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
struct octeon_device {int /*<<< orphan*/  msix_on; TYPE_1__ sriov_info; scalar_t__ chip; struct lio_droq** droq; } ;
struct lio_droq {int desc_ring_dma; size_t max_count; size_t buffer_size; int /*<<< orphan*/  pkts_credit_reg; int /*<<< orphan*/  pkts_sent_reg; } ;
struct lio_cn23xx_pf {int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 size_t LIO_CN23XX_PKT_OUTPUT_CTL_CENB ; 
 size_t LIO_CN23XX_PKT_OUTPUT_CTL_TENB ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct octeon_device*,size_t) ; 
 size_t FUNC10 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct octeon_device*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC13(struct octeon_device *oct, uint32_t oq_no)
{
	struct lio_droq		*droq = oct->droq[oq_no];
	struct lio_cn23xx_pf	*cn23xx = (struct lio_cn23xx_pf *)oct->chip;
	uint64_t		cnt_threshold;
	uint64_t		time_threshold;
	uint32_t		reg_val;

	oq_no += oct->sriov_info.pf_srn;

	FUNC12(oct, FUNC0(oq_no),
			droq->desc_ring_dma);
	FUNC11(oct, FUNC6(oq_no), droq->max_count);

	FUNC11(oct, FUNC1(oq_no),
			droq->buffer_size);

	/* pkt_sent and pkts_credit regs */
	droq->pkts_sent_reg = FUNC3(oq_no);
	droq->pkts_credit_reg = FUNC2(oq_no);

	if (!oct->msix_on) {
		/*
		 * Enable this output queue to generate Packet Timer
		 * Interrupt
		 */
		reg_val =
		    FUNC10(oct, FUNC4(oq_no));
		reg_val |= LIO_CN23XX_PKT_OUTPUT_CTL_TENB;
		FUNC11(oct, FUNC4(oq_no),
				reg_val);

		/*
		 * Enable this output queue to generate Packet Count
		 * Interrupt
		 */
		reg_val =
		    FUNC10(oct, FUNC4(oq_no));
		reg_val |= LIO_CN23XX_PKT_OUTPUT_CTL_CENB;
		FUNC11(oct, FUNC4(oq_no),
				reg_val);
	} else {
		time_threshold = FUNC9(oct,
			(uint32_t)FUNC8(cn23xx->conf));
		cnt_threshold = (uint32_t)FUNC7(cn23xx->conf);

		FUNC12(oct, FUNC5(oq_no),
				((time_threshold << 32 | cnt_threshold)));
	}
}