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
struct i2c_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int I2CCR_MEN ; 
 int I2CCR_TXAK ; 
 int I2CSR_MAL ; 
 int I2CSR_MCF ; 
 int I2CSR_MIF ; 
 int I2CSR_RXAK ; 
 int /*<<< orphan*/  I2C_CONTROL_REG ; 
 int /*<<< orphan*/  I2C_STATUS_REG ; 
 int IIC_EBUSERR ; 
 int IIC_ENOACK ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct i2c_softc *sc, int write, int start)
{
	int err;
	uint8_t status;

	status = FUNC1(sc, I2C_STATUS_REG);
	if (status & I2CSR_MIF) {
		if (write && start && (status & I2CSR_RXAK)) {
			FUNC0("no ack %s", start ?
			    "after sending slave address" : "");
			err = IIC_ENOACK;
			goto error;
		}
		if (status & I2CSR_MAL) {
			FUNC0("arbitration lost");
			err = IIC_EBUSERR;
			goto error;
		}
		if (!write && !(status & I2CSR_MCF)) {
			FUNC0("transfer unfinished");
			err = IIC_EBUSERR;
			goto error;
		}
	}

	return (IIC_NOERR);

error:
	FUNC2(sc, I2C_STATUS_REG, 0x0);
	FUNC2(sc, I2C_CONTROL_REG, I2CCR_MEN | I2CCR_TXAK);
	return (err);
}