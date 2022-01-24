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
typedef  int u_int32_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int HIFN_PLL_IS ; 
 int HIFN_PLL_ND_SHIFT ; 
 int HIFN_PLL_REF_SEL ; 
#define  PCI_PRODUCT_HIFN_7954 130 
#define  PCI_PRODUCT_HIFN_7955 129 
#define  PCI_PRODUCT_HIFN_7956 128 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,char*,char const**) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 int FUNC5 (char const*,char**,int) ; 

__attribute__((used)) static void
FUNC6(device_t dev, u_int *pll)
{
	const char *pllspec;
	u_int freq, mul, fl, fh;
	u_int32_t pllconfig;
	char *nxt;

	if (FUNC3("hifn", FUNC1(dev),
	    "pllconfig", &pllspec))
		pllspec = "ext66";
	fl = 33, fh = 66;
	pllconfig = 0;
	if (FUNC4(pllspec, "ext", 3) == 0) {
		pllspec += 3;
		pllconfig |= HIFN_PLL_REF_SEL;
		switch (FUNC2(dev)) {
		case PCI_PRODUCT_HIFN_7955:
		case PCI_PRODUCT_HIFN_7956:
			fl = 20, fh = 100;
			break;
#ifdef notyet
		case PCI_PRODUCT_HIFN_7954:
			fl = 20, fh = 66;
			break;
#endif
		}
	} else if (FUNC4(pllspec, "pci", 3) == 0)
		pllspec += 3;
	freq = FUNC5(pllspec, &nxt, 10);
	if (nxt == pllspec)
		freq = 66;
	else
		freq = FUNC0(dev, "frequency", freq, fl, fh);
	/*
	 * Calculate multiplier.  We target a Fck of 266 MHz,
	 * allowing only even values, possibly rounded down.
	 * Multipliers > 8 must set the charge pump current.
	 */
	mul = FUNC0(dev, "PLL divisor", (266 / freq) &~ 1, 2, 12);
	pllconfig |= (mul / 2 - 1) << HIFN_PLL_ND_SHIFT;
	if (mul > 8)
		pllconfig |= HIFN_PLL_IS;
	*pll = pllconfig;
}