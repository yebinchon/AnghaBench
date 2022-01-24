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
struct ffec_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FEC_IER_MII ; 
 int /*<<< orphan*/  FEC_IER_REG ; 
 int FEC_MMFR_DATA_MASK ; 
 int FEC_MMFR_OP_READ ; 
 int FEC_MMFR_PA_MASK ; 
 int FEC_MMFR_PA_SHIFT ; 
 int FEC_MMFR_RA_MASK ; 
 int FEC_MMFR_RA_SHIFT ; 
 int /*<<< orphan*/  FEC_MMFR_REG ; 
 int FEC_MMFR_ST_VALUE ; 
 int FEC_MMFR_TA_VALUE ; 
 int FUNC0 (struct ffec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ffec_softc*,int /*<<< orphan*/ ,int) ; 
 struct ffec_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ffec_softc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg)
{
	struct ffec_softc *sc;
	int val;

	sc = FUNC2(dev);

	FUNC1(sc, FEC_IER_REG, FEC_IER_MII);

	FUNC1(sc, FEC_MMFR_REG, FEC_MMFR_OP_READ |
	    FEC_MMFR_ST_VALUE | FEC_MMFR_TA_VALUE |
	    ((phy << FEC_MMFR_PA_SHIFT) & FEC_MMFR_PA_MASK) |
	    ((reg << FEC_MMFR_RA_SHIFT) & FEC_MMFR_RA_MASK));

	if (!FUNC4(sc)) {
		FUNC3(dev, "timeout waiting for mii read\n");
		return (-1); /* All-ones is a symptom of bad mdio. */
	}

	val = FUNC0(sc, FEC_MMFR_REG) & FEC_MMFR_DATA_MASK;

	return (val);
}