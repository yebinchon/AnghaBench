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
struct iicoc_softc {int clockfreq; int i2cfreq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int OC_CONTROL_EN ; 
 int OC_CONTROL_IEN ; 
 int /*<<< orphan*/  OC_I2C_CTRL_REG ; 
 int /*<<< orphan*/  OC_I2C_PRESCALE_HI_REG ; 
 int /*<<< orphan*/  OC_I2C_PRESCALE_LO_REG ; 
 struct iicoc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int 
FUNC3(device_t dev)
{
	struct iicoc_softc *sc;
	int value;

	sc = FUNC0(dev);
	value = FUNC1(dev, OC_I2C_CTRL_REG);
	FUNC2(dev, OC_I2C_CTRL_REG, 
	    value & ~(OC_CONTROL_EN | OC_CONTROL_IEN));
	value = (sc->clockfreq/(5 * sc->i2cfreq)) - 1;
	FUNC2(dev, OC_I2C_PRESCALE_LO_REG, value & 0xff);
	FUNC2(dev, OC_I2C_PRESCALE_HI_REG, value >> 8);
	value = FUNC1(dev, OC_I2C_CTRL_REG);
	FUNC2(dev, OC_I2C_CTRL_REG, value | OC_CONTROL_EN);

	value = FUNC1(dev, OC_I2C_CTRL_REG);
	/* return 0 on success, 1 on error */
	return ((value & OC_CONTROL_EN) == 0);
}