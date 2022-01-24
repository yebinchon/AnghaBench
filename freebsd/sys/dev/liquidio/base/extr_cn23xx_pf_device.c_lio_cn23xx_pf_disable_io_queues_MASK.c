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
typedef  unsigned int uint32_t ;
struct TYPE_2__ {unsigned int pf_srn; } ;
struct octeon_device {unsigned int num_iqs; TYPE_1__ sriov_info; } ;

/* Variables and functions */
 int volatile FUNC0 (unsigned int) ; 
 int volatile LIO_CN23XX_PKT_INPUT_CTL_RING_ENB ; 
 int volatile LIO_CN23XX_PKT_INPUT_CTL_RST ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  LIO_CN23XX_SLI_PKT_IOQ_RING_RST ; 
 int FUNC5 (int) ; 
 unsigned int FUNC6 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC7 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct octeon_device*,int /*<<< orphan*/ ,unsigned int volatile) ; 
 int /*<<< orphan*/  FUNC10 (struct octeon_device*,int /*<<< orphan*/ ,int volatile) ; 

__attribute__((used)) static void
FUNC11(struct octeon_device *oct)
{
	volatile uint64_t	d64;
	volatile uint32_t	d32;
	int			loop;
	unsigned int		q_no;
	uint32_t		ern, srn;

	srn = oct->sriov_info.pf_srn;
	ern = srn + oct->num_iqs;

	/* Disable Input Queues. */
	for (q_no = srn; q_no < ern; q_no++) {
		loop = FUNC5(1000);

		/* start the Reset for a particular ring */
		d64 = FUNC7(oct,
				     FUNC2(q_no));
		d64 &= ~LIO_CN23XX_PKT_INPUT_CTL_RING_ENB;
		d64 |= LIO_CN23XX_PKT_INPUT_CTL_RST;
		FUNC10(oct, FUNC2(q_no),
				d64);

		/*
		 * Wait until hardware indicates that the particular IQ
		 * is out of reset.
		 */
		d64 = FUNC7(oct, LIO_CN23XX_SLI_PKT_IOQ_RING_RST);
		while (!(d64 & FUNC0(q_no)) && loop--) {
			d64 = FUNC7(oct,
					     LIO_CN23XX_SLI_PKT_IOQ_RING_RST);
			FUNC8(1);
			loop--;
		}

		/* Reset the doorbell register for this Input Queue. */
		FUNC9(oct, FUNC1(q_no),
				0xFFFFFFFF);
		while (((FUNC7(oct,
					FUNC1(q_no))) !=
			0ULL) && loop--) {
			FUNC8(1);
		}
	}

	/* Disable Output Queues. */
	for (q_no = srn; q_no < ern; q_no++) {
		loop = FUNC5(1000);

		/*
		 * Wait until hardware indicates that the particular IQ
		 * is out of reset.It given that SLI_PKT_RING_RST is
		 * common for both IQs and OQs
		 */
		d64 = FUNC7(oct, LIO_CN23XX_SLI_PKT_IOQ_RING_RST);
		while (!(d64 & FUNC0(q_no)) && loop--) {
			d64 = FUNC7(oct,
					     LIO_CN23XX_SLI_PKT_IOQ_RING_RST);
			FUNC8(1);
			loop--;
		}

		/* Reset the doorbell register for this Output Queue. */
		FUNC9(oct, FUNC3(q_no),
				0xFFFFFFFF);
		while ((FUNC7(oct,
				       FUNC3(q_no)) !=
			0ULL) && loop--) {
			FUNC8(1);
		}

		/* clear the SLI_PKT(0..63)_CNTS[CNT] reg value */
		d32 = FUNC6(oct, FUNC4(q_no));
		FUNC9(oct, FUNC4(q_no),	d32);
	}
}