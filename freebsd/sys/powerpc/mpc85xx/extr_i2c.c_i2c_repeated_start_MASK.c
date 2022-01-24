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
typedef  int /*<<< orphan*/  u_char ;
struct i2c_softc {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I2CCR_RSTA ; 
 int /*<<< orphan*/  I2C_CONTROL_REG ; 
 int /*<<< orphan*/  I2C_DATA_REG ; 
 int IIC_NOERR ; 
 struct i2c_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev, u_char slave, int timeout)
{
	struct i2c_softc *sc;
	int error;
	
	sc = FUNC1(dev);

	FUNC5(&sc->mutex);
	/* Set repeated start condition */
	FUNC3(sc, I2C_CONTROL_REG ,I2CCR_RSTA);
	/* Write target address - LSB is R/W bit */
	FUNC4(sc, I2C_DATA_REG, slave);
	FUNC0(1250);

	error = FUNC2(dev, sc, 1, 1);
	FUNC6(&sc->mutex);

	if (error)
		return (error);

	return (IIC_NOERR);
}