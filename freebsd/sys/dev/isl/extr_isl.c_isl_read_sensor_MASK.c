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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  REG_CMD1 ; 
 int /*<<< orphan*/  REG_DATA1 ; 
 int /*<<< orphan*/  REG_DATA2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int hz ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint8_t cmd_mask)
{
	uint8_t rbyte;
	uint8_t cmd;
	int ret;

	if (FUNC1(dev, REG_CMD1, &rbyte) != 0) {
		FUNC0(dev,
		    "Couldn't read first byte before issuing command %d\n",
		    cmd_mask);
		return (-1);
	}

	cmd = (rbyte & 0x1f) | cmd_mask;
	if (FUNC2(dev, REG_CMD1, cmd) != 0) {
		FUNC0(dev, "Couldn't write command %d\n", cmd_mask);
		return (-1);
	}

	FUNC3("islconv", hz/10);

	if (FUNC1(dev, REG_DATA1, &rbyte) != 0) {
		FUNC0(dev,
		    "Couldn't read first byte after command %d\n", cmd_mask);
		return (-1);
	}

	ret = rbyte;
	if (FUNC1(dev, REG_DATA2, &rbyte) != 0) {
		FUNC0(dev, "Couldn't read second byte after command %d\n", cmd_mask);
		return (-1);
	}
	ret += rbyte << 8;

	return (ret);
}