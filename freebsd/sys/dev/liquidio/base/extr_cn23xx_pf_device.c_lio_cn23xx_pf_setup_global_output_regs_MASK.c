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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ pf_srn; scalar_t__ num_pf_rings; } ;
struct octeon_device {scalar_t__ pf_num; TYPE_1__ sriov_info; scalar_t__ chip; } ;
struct lio_cn23xx_pf {int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_BMODE ; 
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_DPTR ; 
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_ES ; 
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_ES_P ; 
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_NSR ; 
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_NSR_P ; 
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_ROR ; 
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_ROR_P ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  LIO_CN23XX_SLI_OQ_WMARK ; 
 int /*<<< orphan*/  LIO_CN23XX_SLI_OUT_BP_EN2_W1S ; 
 int /*<<< orphan*/  LIO_CN23XX_SLI_OUT_BP_EN_W1S ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct octeon_device*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct octeon_device *oct)
{
	struct lio_cn23xx_pf *cn23xx = (struct lio_cn23xx_pf *)oct->chip;
	uint64_t	time_threshold;
	uint32_t	ern, q_no, reg_val, srn;

	srn = oct->sriov_info.pf_srn;
	ern = srn + oct->sriov_info.num_pf_rings;

	if (FUNC2(cn23xx->conf)) {
		FUNC8(oct, LIO_CN23XX_SLI_OQ_WMARK, 32);
	} else {
		/* Set Output queue watermark to 0 to disable backpressure */
		FUNC8(oct, LIO_CN23XX_SLI_OQ_WMARK, 0);
	}

	for (q_no = srn; q_no < ern; q_no++) {
		reg_val = FUNC6(oct,
					 FUNC0(q_no));

		/* set IPTR & DPTR */
		reg_val |= LIO_CN23XX_PKT_OUTPUT_CTL_DPTR;

		/* reset BMODE */
		reg_val &= ~(LIO_CN23XX_PKT_OUTPUT_CTL_BMODE);

		/*
		 * No Relaxed Ordering, No Snoop, 64-bit Byte swap for
		 * Output Queue ScatterList reset ROR_P, NSR_P
		 */
		reg_val &= ~(LIO_CN23XX_PKT_OUTPUT_CTL_ROR_P);
		reg_val &= ~(LIO_CN23XX_PKT_OUTPUT_CTL_NSR_P);

#if BYTE_ORDER == LITTLE_ENDIAN
		reg_val &= ~(LIO_CN23XX_PKT_OUTPUT_CTL_ES_P);
#else	/* BYTE_ORDER != LITTLE_ENDIAN  */
		reg_val |= (LIO_CN23XX_PKT_OUTPUT_CTL_ES_P);
#endif	/* BYTE_ORDER == LITTLE_ENDIAN */

		/*
		 * No Relaxed Ordering, No Snoop, 64-bit Byte swap for
		 * Output Queue Data reset ROR, NSR
		 */
		reg_val &= ~(LIO_CN23XX_PKT_OUTPUT_CTL_ROR);
		reg_val &= ~(LIO_CN23XX_PKT_OUTPUT_CTL_NSR);
		/* set the ES bit */
		reg_val |= (LIO_CN23XX_PKT_OUTPUT_CTL_ES);

		/* write all the selected settings */
		FUNC7(oct, FUNC0(q_no),
				reg_val);

		/*
		 * Enabling these interrupt in oct->fn_list.enable_interrupt()
		 * routine which called after IOQ init.
		 * Set up interrupt packet and time thresholds
		 * for all the OQs
		 */
		time_threshold =FUNC5(
		       oct, (uint32_t)FUNC4(cn23xx->conf));

		FUNC8(oct, FUNC1(q_no),
				(FUNC3(cn23xx->conf) |
				 (time_threshold << 32)));
	}

	/* Setting the water mark level for pko back pressure * */
	FUNC8(oct, LIO_CN23XX_SLI_OQ_WMARK, 0x40);

	/* Enable channel-level backpressure */
	if (oct->pf_num)
		FUNC8(oct, LIO_CN23XX_SLI_OUT_BP_EN2_W1S,
				0xffffffffffffffffULL);
	else
		FUNC8(oct, LIO_CN23XX_SLI_OUT_BP_EN_W1S,
				0xffffffffffffffffULL);
}