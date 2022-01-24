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
typedef  int uint8_t ;
typedef  int u_char ;
struct i2c_softc {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I2C_BAUD_RATE_DEF ; 
 int I2C_BAUD_RATE_FAST ; 
 int /*<<< orphan*/  I2C_CONTROL_REG ; 
 int /*<<< orphan*/  I2C_DFSRR_REG ; 
 int I2C_DFSSR_DIV ; 
 int I2C_ENABLE ; 
 int /*<<< orphan*/  I2C_FDR_REG ; 
 int /*<<< orphan*/  I2C_STATUS_REG ; 
#define  IIC_FAST 131 
#define  IIC_FASTEST 130 
 int IIC_NOERR ; 
#define  IIC_SLOW 129 
#define  IIC_UNKNOWN 128 
 struct i2c_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev, u_char speed, u_char addr, u_char *oldadr)
{
	struct i2c_softc *sc;
	uint8_t baud_rate;

	sc = FUNC1(dev);

	switch (speed) {
	case IIC_FAST:
		baud_rate = I2C_BAUD_RATE_FAST;
		break;
	case IIC_SLOW:
	case IIC_UNKNOWN:
	case IIC_FASTEST:
	default:
		baud_rate = I2C_BAUD_RATE_DEF;
		break;
	}

	FUNC3(&sc->mutex);
	FUNC2(sc, I2C_CONTROL_REG, 0x0);
	FUNC2(sc, I2C_STATUS_REG, 0x0);
	FUNC0(1000);
	FUNC2(sc, I2C_FDR_REG, baud_rate);
	FUNC2(sc, I2C_DFSRR_REG, I2C_DFSSR_DIV);
	FUNC2(sc, I2C_CONTROL_REG, I2C_ENABLE);
	FUNC0(1000);
	FUNC4(&sc->mutex);

	return (IIC_NOERR);
}