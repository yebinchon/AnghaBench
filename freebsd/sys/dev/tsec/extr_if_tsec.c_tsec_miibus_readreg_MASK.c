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
 int TSEC_MIIMCOM_READCYCLE ; 
 int TSEC_MIIMIND_BUSY ; 
 int TSEC_MIIMIND_NOTVALID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct tsec_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TSEC_REG_MIIMADD ; 
 int /*<<< orphan*/  TSEC_REG_MIIMCOM ; 
 int /*<<< orphan*/  TSEC_REG_MIIMSTAT ; 
 struct tsec_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct tsec_softc*,int) ; 

int
FUNC7(device_t dev, int phy, int reg)
{
	struct tsec_softc *sc;
	int timeout;
	int rv;

	sc = FUNC4(dev);

	FUNC0();
	FUNC3(sc, TSEC_REG_MIIMADD, (phy << 8) | reg);
	FUNC3(sc, TSEC_REG_MIIMCOM, 0);
	FUNC3(sc, TSEC_REG_MIIMCOM, TSEC_MIIMCOM_READCYCLE);

	timeout = FUNC6(sc, TSEC_MIIMIND_NOTVALID | TSEC_MIIMIND_BUSY);
	rv = FUNC1(sc, TSEC_REG_MIIMSTAT);
	FUNC2();

	if (timeout)
		FUNC5(dev, "Timeout while reading from PHY!\n");

	return (rv);
}