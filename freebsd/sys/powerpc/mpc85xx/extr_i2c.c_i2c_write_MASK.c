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
 int /*<<< orphan*/  I2C_DATA_REG ; 
 int IIC_NOERR ; 
 struct i2c_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev, const char *buf, int len, int *sent, int timeout)
{
	struct i2c_softc *sc;
	int error;

	sc = FUNC1(dev);
	*sent = 0;

	FUNC4(&sc->mutex);
	while (*sent < len) {
		FUNC3(sc, I2C_DATA_REG, *buf++);
		FUNC0(1250);

		error = FUNC2(dev, sc, 1, 0);
		if (error) {
			FUNC5(&sc->mutex);
			return (error);
		}

		(*sent)++;
	}
	FUNC5(&sc->mutex);

	return (IIC_NOERR);
}