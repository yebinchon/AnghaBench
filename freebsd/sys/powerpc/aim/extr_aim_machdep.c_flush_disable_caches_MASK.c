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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int register_t ;

/* Variables and functions */
 int HID0_DCE ; 
 int L2CR_L2DO_7450 ; 
 int L2CR_L2E ; 
 int L2CR_L2HWF ; 
 int L2CR_L2I ; 
 int L2CR_L2IO_7450 ; 
 int L3CR_L3DO ; 
 int L3CR_L3E ; 
 int L3CR_L3HWF ; 
 int L3CR_L3I ; 
 int L3CR_L3IO ; 
 int MSSCR0_L2PFE ; 
 int PSL_DR ; 
 int PSL_EE ; 
 int /*<<< orphan*/  SPR_HID0 ; 
 int /*<<< orphan*/  SPR_L2CR ; 
 int /*<<< orphan*/  SPR_L3CR ; 
 int /*<<< orphan*/  SPR_LDSTCR ; 
 int /*<<< orphan*/  SPR_MSSCR0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(void)
{
	register_t msr;
	register_t msscr0;
	register_t cache_reg;
	volatile uint32_t *memp;
	uint32_t temp;
	int i;
	int x;

	msr = FUNC1();
	FUNC5();
	FUNC3(msr & ~(PSL_EE | PSL_DR));
	msscr0 = FUNC2(SPR_MSSCR0);
	msscr0 &= ~MSSCR0_L2PFE;
	FUNC4(SPR_MSSCR0, msscr0);
	FUNC5();
	FUNC0();
	__asm__ __volatile__("dssall; sync");
	FUNC5();
	FUNC0();
	__asm__ __volatile__("dcbf 0,%0" :: "r"(0));
	__asm__ __volatile__("dcbf 0,%0" :: "r"(0));
	__asm__ __volatile__("dcbf 0,%0" :: "r"(0));

	/* Lock the L1 Data cache. */
	FUNC4(SPR_LDSTCR, FUNC2(SPR_LDSTCR) | 0xFF);
	FUNC5();
	FUNC0();

	FUNC4(SPR_LDSTCR, 0);

	/*
	 * Perform this in two stages: Flush the cache starting in RAM, then do it
	 * from ROM.
	 */
	memp = (volatile uint32_t *)0x00000000;
	for (i = 0; i < 128 * 1024; i++) {
		temp = *memp;
		__asm__ __volatile__("dcbf 0,%0" :: "r"(memp));
		memp += 32/sizeof(*memp);
	}

	memp = (volatile uint32_t *)0xfff00000;
	x = 0xfe;

	for (; x != 0xff;) {
		FUNC4(SPR_LDSTCR, x);
		for (i = 0; i < 128; i++) {
			temp = *memp;
			__asm__ __volatile__("dcbf 0,%0" :: "r"(memp));
			memp += 32/sizeof(*memp);
		}
		x = ((x << 1) | 1) & 0xff;
	}
	FUNC4(SPR_LDSTCR, 0);

	cache_reg = FUNC2(SPR_L2CR);
	if (cache_reg & L2CR_L2E) {
		cache_reg &= ~(L2CR_L2IO_7450 | L2CR_L2DO_7450);
		FUNC4(SPR_L2CR, cache_reg);
		FUNC5();
		FUNC4(SPR_L2CR, cache_reg | L2CR_L2HWF);
		while (FUNC2(SPR_L2CR) & L2CR_L2HWF)
			; /* Busy wait for cache to flush */
		FUNC5();
		cache_reg &= ~L2CR_L2E;
		FUNC4(SPR_L2CR, cache_reg);
		FUNC5();
		FUNC4(SPR_L2CR, cache_reg | L2CR_L2I);
		FUNC5();
		while (FUNC2(SPR_L2CR) & L2CR_L2I)
			; /* Busy wait for L2 cache invalidate */
		FUNC5();
	}

	cache_reg = FUNC2(SPR_L3CR);
	if (cache_reg & L3CR_L3E) {
		cache_reg &= ~(L3CR_L3IO | L3CR_L3DO);
		FUNC4(SPR_L3CR, cache_reg);
		FUNC5();
		FUNC4(SPR_L3CR, cache_reg | L3CR_L3HWF);
		while (FUNC2(SPR_L3CR) & L3CR_L3HWF)
			; /* Busy wait for cache to flush */
		FUNC5();
		cache_reg &= ~L3CR_L3E;
		FUNC4(SPR_L3CR, cache_reg);
		FUNC5();
		FUNC4(SPR_L3CR, cache_reg | L3CR_L3I);
		FUNC5();
		while (FUNC2(SPR_L3CR) & L3CR_L3I)
			; /* Busy wait for L3 cache invalidate */
		FUNC5();
	}

	FUNC4(SPR_HID0, FUNC2(SPR_HID0) & ~HID0_DCE);
	FUNC5();
	FUNC0();

	FUNC3(msr);
}