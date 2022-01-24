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
struct csa_info {int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  csa_res ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_AC97_POWERDOWN ; 
 int /*<<< orphan*/  BA0_CLKCR1 ; 
 int /*<<< orphan*/  BA1_CIE ; 
 int /*<<< orphan*/  BA1_PFIE ; 
 int CLKCR1_SWCE ; 
 int /*<<< orphan*/  FUNC0 (struct csa_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct csa_info*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct csa_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct csa_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct csa_info* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct csa_info *csa;
	csa_res *resp;

	csa = FUNC9(dev);
	resp = &csa->res;

	FUNC1(csa, 1);

	/* playback interrupt disable */
	FUNC8(resp, BA1_PFIE,
	    (FUNC2(resp, BA1_PFIE) & ~0x0000f03f) | 0x00000010);
	/* capture interrupt disable */
	FUNC8(resp, BA1_CIE,
	    (FUNC2(resp, BA1_CIE) & ~0x0000003f) | 0x00000011);
	FUNC6(csa);
	FUNC4(csa);

	FUNC0(csa);

	FUNC3(resp);

	FUNC5(resp);
	/*
	 *  Power down the DAC and ADC.  For now leave the other areas on.
	 */
	FUNC7(&csa->res, BA0_AC97_POWERDOWN, 0x300);
	/*
	 *  Power down the PLL.
	 */
	FUNC8(resp, BA0_CLKCR1, 0);
	/*
	 * Turn off the Processor by turning off the software clock
	 * enable flag in the clock control register.
	 */
	FUNC8(resp, BA0_CLKCR1,
	    FUNC2(resp, BA0_CLKCR1) & ~CLKCR1_SWCE);

	FUNC1(csa, -1);

	return 0;
}