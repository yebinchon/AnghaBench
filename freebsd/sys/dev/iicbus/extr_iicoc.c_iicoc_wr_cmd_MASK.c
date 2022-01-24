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
 int /*<<< orphan*/  OC_I2C_CMD_REG ; 
 int /*<<< orphan*/  OC_I2C_DATA_REG ; 
 int /*<<< orphan*/  OC_STATUS_TIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint8_t data, uint8_t cmd)
{

	FUNC1(dev, OC_I2C_DATA_REG, data);
	FUNC1(dev, OC_I2C_CMD_REG, cmd);
	if (FUNC2(dev, OC_STATUS_TIP) < 0) {
		FUNC0(dev, "write: Timeout waiting for TIP clear.\n");
		return (-1);
	}
	return (0);
}