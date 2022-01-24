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
struct i2c_softc {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I2CCR_MEN ; 
 int I2CCR_MSTA ; 
 int I2CCR_TXAK ; 
 int /*<<< orphan*/  I2C_CONTROL_REG ; 
 int /*<<< orphan*/  I2C_DATA_REG ; 
 int IIC_NOERR ; 
 struct i2c_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev, char *buf, int len, int *read, int last, int delay)
{
	struct i2c_softc *sc;
	int error;

	sc = FUNC1(dev);
	*read = 0;

	FUNC5(&sc->mutex);
	if (len) {
		if (len == 1)
			FUNC4(sc, I2C_CONTROL_REG, I2CCR_MEN |
			    I2CCR_MSTA | I2CCR_TXAK);

		else
			FUNC4(sc, I2C_CONTROL_REG, I2CCR_MEN |
			    I2CCR_MSTA);

		/* dummy read */
		FUNC3(sc, I2C_DATA_REG);
		FUNC0(1000);
	}

	while (*read < len) {
		FUNC0(1000);
		error = FUNC2(dev, sc, 0, 0);
		if (error) {
			FUNC6(&sc->mutex);
			return (error);
		}
		if ((*read == len - 2) && last) {
			FUNC4(sc, I2C_CONTROL_REG, I2CCR_MEN |
			    I2CCR_MSTA | I2CCR_TXAK);
		}

		if ((*read == len - 1) && last) {
			FUNC4(sc, I2C_CONTROL_REG,  I2CCR_MEN |
			    I2CCR_TXAK);
		}

		*buf++ = FUNC3(sc, I2C_DATA_REG);
		(*read)++;
		FUNC0(1250);
	}
	FUNC6(&sc->mutex);

	return (IIC_NOERR);
}