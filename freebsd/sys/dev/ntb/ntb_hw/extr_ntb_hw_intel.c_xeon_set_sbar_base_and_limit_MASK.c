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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ntb_softc {scalar_t__ b2b_off; } ;
typedef  enum ntb_bar { ____Placeholder_ntb_bar } ntb_bar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ntb_softc*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ntb_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ntb_softc *ntb, uint64_t bar_addr,
    enum ntb_bar idx, enum ntb_bar regbar)
{
	uint64_t reg_val;
	uint32_t base_reg, lmt_reg;

	FUNC0(ntb, idx, &base_reg, NULL, &lmt_reg);
	if (idx == regbar) {
		if (ntb->b2b_off)
			bar_addr += ntb->b2b_off;
		else
			bar_addr = 0;
	}

	if (!FUNC1(ntb, idx)) {
		FUNC3(4, base_reg, bar_addr);
		reg_val = FUNC2(4, base_reg);
		(void)reg_val;

		FUNC3(4, lmt_reg, bar_addr);
		reg_val = FUNC2(4, lmt_reg);
		(void)reg_val;
	} else {
		FUNC3(8, base_reg, bar_addr);
		reg_val = FUNC2(8, base_reg);
		(void)reg_val;

		FUNC3(8, lmt_reg, bar_addr);
		reg_val = FUNC2(8, lmt_reg);
		(void)reg_val;
	}
}