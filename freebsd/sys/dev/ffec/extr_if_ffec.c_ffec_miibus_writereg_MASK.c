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
 int FEC_MMFR_OP_WRITE ; 
 int FEC_MMFR_PA_MASK ; 
 int FEC_MMFR_PA_SHIFT ; 
 int FEC_MMFR_RA_MASK ; 
 int FEC_MMFR_RA_SHIFT ; 
 int /*<<< orphan*/  FEC_MMFR_REG ; 
 int FEC_MMFR_ST_VALUE ; 
 int FEC_MMFR_TA_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct ffec_softc*,int /*<<< orphan*/ ,int) ; 
 struct ffec_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ffec_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int phy, int reg, int val)
{
	struct ffec_softc *sc;

	sc = FUNC1(dev);

	FUNC0(sc, FEC_IER_REG, FEC_IER_MII);

	FUNC0(sc, FEC_MMFR_REG, FEC_MMFR_OP_WRITE |
	    FEC_MMFR_ST_VALUE | FEC_MMFR_TA_VALUE |
	    ((phy << FEC_MMFR_PA_SHIFT) & FEC_MMFR_PA_MASK) |
	    ((reg << FEC_MMFR_RA_SHIFT) & FEC_MMFR_RA_MASK) |
	    (val & FEC_MMFR_DATA_MASK));

	if (!FUNC3(sc)) {
		FUNC2(dev, "timeout waiting for mii write\n");
		return (-1);
	}

	return (0);
}