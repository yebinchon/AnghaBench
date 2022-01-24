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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IIC_ENOACK ; 
 int /*<<< orphan*/  OC_I2C_STATUS_REG ; 
 int OC_STATUS_NACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint8_t data, uint8_t cmd)
{
	if (FUNC2(dev, data, cmd) < 0) 
		return (-1);	
	
	if (FUNC1(dev, OC_I2C_STATUS_REG) & OC_STATUS_NACK) {
		FUNC0(dev, "write: I2C command ACK Error.\n");
		return (IIC_ENOACK);
	}
	return (0);
}