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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct bcm_platform {int /*<<< orphan*/  cid; int /*<<< orphan*/  cc_caps; } ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_platform*,scalar_t__) ; 
 int /*<<< orphan*/  CHIPC_CAP_PLL ; 
 scalar_t__ CHIPC_CLKC_N ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_platform*) ; 
 scalar_t__ FUNC3 (struct bcm_platform*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t
FUNC7(struct bcm_platform *bp)
{
	uint32_t		 fixed_hz;
	uint32_t		 n, m;
	bus_size_t		 mreg;
	uint8_t			 pll_type;

	/* PMU support */
	if (FUNC3(bp))
		return (FUNC4(FUNC2(bp)));

	/*
	 * PWRCTL support
	 */
	pll_type = FUNC1(bp->cc_caps, CHIPC_CAP_PLL);
	mreg = FUNC5(&bp->cid, pll_type, &fixed_hz);
	if (mreg == 0)
		return (fixed_hz);

	n = FUNC0(bp, CHIPC_CLKC_N);
	m = FUNC0(bp, mreg);

	return (FUNC6(&bp->cid, pll_type, n, m));
	
}