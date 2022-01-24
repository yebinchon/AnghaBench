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
typedef  int /*<<< orphan*/  ig4iic_softc_t ;

/* Variables and functions */
 int IG4_I2C_ENABLE ; 
 int /*<<< orphan*/  IG4_REG_CLR_INTR ; 
 int /*<<< orphan*/  IG4_REG_ENABLE_STATUS ; 
 int /*<<< orphan*/  IG4_REG_I2C_EN ; 
 int IIC_ETIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(ig4iic_softc_t *sc, uint32_t ctl)
{
	int retry;
	int error;
	uint32_t v;

	/*
	 * When the controller is enabled, interrupt on STOP detect
	 * or receive character ready and clear pending interrupts.
	 */
	FUNC0(sc, 0);
	if (ctl & IG4_I2C_ENABLE)
		FUNC2(sc, IG4_REG_CLR_INTR);

	FUNC3(sc, IG4_REG_I2C_EN, ctl);
	error = IIC_ETIMEOUT;

	for (retry = 100; retry > 0; --retry) {
		v = FUNC2(sc, IG4_REG_ENABLE_STATUS);
		if (((v ^ ctl) & IG4_I2C_ENABLE) == 0) {
			error = 0;
			break;
		}
		FUNC1("i2cslv", 1);
	}
	return (error);
}