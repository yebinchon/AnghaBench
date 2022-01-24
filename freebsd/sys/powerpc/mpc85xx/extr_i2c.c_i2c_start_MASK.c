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
 int I2CCR_MEN ; 
 int I2CCR_MSTA ; 
 int I2CCR_MTX ; 
 int I2CSR_MBB ; 
 int /*<<< orphan*/  I2C_CONTROL_REG ; 
 int /*<<< orphan*/  I2C_DATA_REG ; 
 int /*<<< orphan*/  I2C_STATUS_REG ; 
 int IIC_EBUSERR ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct i2c_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct i2c_softc*,int,int) ; 
 int FUNC4 (struct i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev, u_char slave, int timeout)
{
	struct i2c_softc *sc;
	uint8_t status;
	int error;

	sc = FUNC2(dev);
	FUNC0(1000);

	FUNC7(&sc->mutex);
	status = FUNC4(sc, I2C_STATUS_REG);
	/* Check if bus is idle or busy */
	if (status & I2CSR_MBB) {
		FUNC1("bus busy");
		FUNC8(&sc->mutex);
		FUNC5(dev);
		return (IIC_EBUSERR);
	}

	/* Set start condition */
	FUNC6(sc, I2C_CONTROL_REG, I2CCR_MEN | I2CCR_MSTA | I2CCR_MTX);
	/* Write target address - LSB is R/W bit */
	FUNC6(sc, I2C_DATA_REG, slave);
	FUNC0(1250);

	error = FUNC3(dev, sc, 1, 1);

	FUNC8(&sc->mutex);
	if (error)
		return (error);

	return (IIC_NOERR);
}