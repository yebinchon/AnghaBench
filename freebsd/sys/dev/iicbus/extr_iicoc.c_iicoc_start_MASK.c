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
typedef  int u_char ;
struct iicoc_softc {int i2cdev_addr; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IIC_EBUSERR ; 
 int IIC_ENOACK ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  OC_COMMAND_START ; 
 int /*<<< orphan*/  OC_COMMAND_STOP ; 
 int /*<<< orphan*/  OC_I2C_CMD_REG ; 
 int /*<<< orphan*/  OC_I2C_STATUS_REG ; 
 int OC_STATUS_AL ; 
 int /*<<< orphan*/  OC_STATUS_BUSY ; 
 struct iicoc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC8(device_t dev, u_char slave, int timeout)
{
	int error = IIC_EBUSERR;
	struct iicoc_softc *sc;

	sc = FUNC0(dev);
	FUNC6(&sc->sc_mtx);
	sc->i2cdev_addr = (slave >> 1);

	/* Verify the bus is idle */
	if (FUNC4(dev, OC_STATUS_BUSY) < 0)
		goto i2c_stx_error;

	/* Write Slave Address */
	if (FUNC5(dev, slave, OC_COMMAND_START)) {
		FUNC1(dev, 
		    "I2C write slave address [0x%x] failed.\n", slave);
		error = IIC_ENOACK;
		goto i2c_stx_error;	
	}
	
	/* Verify Arbitration is not Lost */
	if (FUNC2(dev, OC_I2C_STATUS_REG) & OC_STATUS_AL) {
		FUNC1(dev, "I2C Bus Arbitration Lost, Aborting.\n");
		error = IIC_EBUSERR;
		goto i2c_stx_error;
	}
	error = IIC_NOERR;
	FUNC7(&sc->sc_mtx);
	return (error);
i2c_stx_error:
	FUNC3(dev, OC_I2C_CMD_REG, OC_COMMAND_STOP);
	FUNC4(dev, OC_STATUS_BUSY);  /* wait for idle */
	FUNC7(&sc->sc_mtx);
	return (error);
}