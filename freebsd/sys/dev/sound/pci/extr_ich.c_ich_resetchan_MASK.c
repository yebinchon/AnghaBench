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
struct sc_info {int flags; scalar_t__ vendor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int ICH_IGNORE_RESET ; 
 int ICH_REG_MC_BASE ; 
 int ICH_REG_PI_BASE ; 
 int ICH_REG_PO_BASE ; 
 scalar_t__ ICH_REG_X_CR ; 
 int ICH_TIMEOUT ; 
 int /*<<< orphan*/  ICH_X_CR_RR ; 
 scalar_t__ NVIDIA_VENDORID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct sc_info*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct sc_info *sc, int num)
{
	int i, cr, regbase;

	if (num == 0)
		regbase = ICH_REG_PO_BASE;
	else if (num == 1)
		regbase = ICH_REG_PI_BASE;
	else if (num == 2)
		regbase = ICH_REG_MC_BASE;
	else
		return (ENXIO);

	FUNC3(sc, regbase + ICH_REG_X_CR, 0, 1);
#if 1
	/* This may result in no sound output on NForce 2 MBs, see PR 73987 */
	FUNC0(100);
#else
	(void)ich_rd(sc, regbase + ICH_REG_X_CR, 1);
#endif
	FUNC3(sc, regbase + ICH_REG_X_CR, ICH_X_CR_RR, 1);
	for (i = 0; i < ICH_TIMEOUT; i++) {
		cr = FUNC2(sc, regbase + ICH_REG_X_CR, 1);
		if (cr == 0)
			return (0);
		FUNC0(1);
	}

	if (sc->flags & ICH_IGNORE_RESET)
		return (0);
#if 0
	else if (sc->vendor == NVIDIA_VENDORID) {
	    	sc->flags |= ICH_IGNORE_RESET;
		device_printf(sc->dev, "ignoring reset failure!\n");
		return (0);
	}
#endif

	FUNC1(sc->dev, "cannot reset channel %d\n", num);
	return (ENXIO);
}