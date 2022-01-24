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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct octeon_device {scalar_t__ chip; } ;
struct lio_cn23xx_pf {int /*<<< orphan*/  intr_enb_reg64; int /*<<< orphan*/  intr_mask64; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIO_CN23XX_INTR_PKT_DATA ; 
 int OCTEON_ALL_INTR ; 
 int OCTEON_OUTPUT_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct octeon_device *oct, uint8_t intr_flag)
{
	struct lio_cn23xx_pf	*cn23xx = (struct lio_cn23xx_pf *)oct->chip;
	uint64_t		intr_val = 0;

	/* Divide the single write to multiple writes based on the flag. */
	/* Enable Interrupt */
	if (intr_flag == OCTEON_ALL_INTR) {
		FUNC1(oct, cn23xx->intr_enb_reg64,
				cn23xx->intr_mask64);
	} else if (intr_flag & OCTEON_OUTPUT_INTR) {
		intr_val = FUNC0(oct, cn23xx->intr_enb_reg64);
		intr_val |= LIO_CN23XX_INTR_PKT_DATA;
		FUNC1(oct, cn23xx->intr_enb_reg64, intr_val);
	}
}