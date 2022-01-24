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
struct iicoc_softc {int reg_shift; int /*<<< orphan*/  i2cfreq; int /*<<< orphan*/  clockfreq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  XLP_I2C_CLKFREQ ; 
 int /*<<< orphan*/  XLP_I2C_FREQ ; 
 struct iicoc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct iicoc_softc *sc;
	
	sc = FUNC0(dev);
	if ((FUNC3(dev) == 0x184e) &&
	    (FUNC2(dev) == 0x1011)) {
		sc->clockfreq = XLP_I2C_CLKFREQ;
		sc->i2cfreq = XLP_I2C_FREQ;
		sc->reg_shift = 2;
		FUNC1(dev, "Netlogic XLP I2C Controller");
		return (BUS_PROBE_DEFAULT);
	}
	return (ENXIO);
}