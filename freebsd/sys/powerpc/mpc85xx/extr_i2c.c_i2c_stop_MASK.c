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
 int I2CCR_TXAK ; 
 int /*<<< orphan*/  I2C_CONTROL_REG ; 
 int IIC_NOERR ; 
 struct i2c_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct i2c_softc *sc;

	sc = FUNC1(dev);
	FUNC3(&sc->mutex);
	FUNC2(sc, I2C_CONTROL_REG, I2CCR_MEN | I2CCR_TXAK);
	FUNC0(1000);
	FUNC4(&sc->mutex);

	return (IIC_NOERR);
}