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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  OCP85XX_CLKDVDR ; 
 int OCP85XX_CLKDVDR_PXCKEN ; 
 int OCP85XX_CLKDVDR_PXCKINV ; 
 int OCP85XX_CLKDVDR_PXCLK_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev, unsigned int freq)
{
	phandle_t node;
	unsigned long bus_freq;
	uint32_t pxclk_set;
	uint32_t clkdvd;

	node = FUNC7(FUNC2(dev));
	if ((bus_freq = FUNC6()) <= 0) {
		FUNC3(dev, "Unable to get bus frequency\n");
		return (ENXIO);
	}

	/* freq is in kHz */
	freq *= 1000;
	/* adding freq/2 to round-to-closest */
	pxclk_set = FUNC5(FUNC4((bus_freq + freq/2) / freq, 2), 255) << 16;
	pxclk_set |= OCP85XX_CLKDVDR_PXCKEN;
	clkdvd = FUNC0(OCP85XX_CLKDVDR);
	clkdvd &= ~(OCP85XX_CLKDVDR_PXCKEN | OCP85XX_CLKDVDR_PXCKINV |
		OCP85XX_CLKDVDR_PXCLK_MASK);
	FUNC1(OCP85XX_CLKDVDR, clkdvd);
	FUNC1(OCP85XX_CLKDVDR, clkdvd | pxclk_set);

	return (0);
}