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
struct tsec_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  TSEC_MIIMIND_BUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct tsec_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TSEC_REG_MIIMADD ; 
 int /*<<< orphan*/  TSEC_REG_MIIMCON ; 
 struct tsec_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct tsec_softc*,int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev, int phy, int reg, int value)
{
	struct tsec_softc *sc;
	int timeout;

	sc = FUNC3(dev);

	FUNC0();
	FUNC2(sc, TSEC_REG_MIIMADD, (phy << 8) | reg);
	FUNC2(sc, TSEC_REG_MIIMCON, value);
	timeout = FUNC5(sc, TSEC_MIIMIND_BUSY);
	FUNC1();

	if (timeout)
		FUNC4(dev, "Timeout while writing to PHY!\n");

	return (0);
}