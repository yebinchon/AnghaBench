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
struct sge_softc {int /*<<< orphan*/  sge_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct sge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  GMIIControl ; 
 int GMI_DATA_SHIFT ; 
 int GMI_OP_WR ; 
 int GMI_PHY_SHIFT ; 
 int GMI_REG_SHIFT ; 
 int GMI_REQ ; 
 int SGE_TIMEOUT ; 
 struct sge_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg, int data)
{
	struct sge_softc *sc;
	uint32_t val;
	int i;

	sc = FUNC3(dev);
	FUNC1(sc, GMIIControl, (phy << GMI_PHY_SHIFT) |
	    (reg << GMI_REG_SHIFT) | (data << GMI_DATA_SHIFT) |
	    GMI_OP_WR | GMI_REQ);
	FUNC2(10);
	for (i = 0; i < SGE_TIMEOUT; i++) {
		val = FUNC0(sc, GMIIControl);
		if ((val & GMI_REQ) == 0)
			break;
		FUNC2(10);
	}
	if (i == SGE_TIMEOUT)
		FUNC4(sc->sge_dev, "PHY write timeout : %d\n", reg);
	return (0);
}