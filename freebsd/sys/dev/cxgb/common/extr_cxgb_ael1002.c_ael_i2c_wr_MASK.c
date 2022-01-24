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
struct cphy {int /*<<< orphan*/  addr; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  AEL_I2C_CTRL ; 
 int /*<<< orphan*/  AEL_I2C_DATA ; 
 int /*<<< orphan*/  AEL_I2C_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MDIO_DEV_PMA_PMD ; 
 int FUNC1 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct cphy *phy, int dev_addr, int word_addr, int data)
{
	int i, err;
	unsigned int stat;

	err = FUNC2(phy, MDIO_DEV_PMA_PMD, AEL_I2C_DATA, data);
	if (err)
		return err;

	err = FUNC2(phy, MDIO_DEV_PMA_PMD, AEL_I2C_CTRL,
			 (dev_addr << 8) | word_addr);
	if (err)
		return err;

	for (i = 0; i < 200; i++) {
		FUNC3(1);
		err = FUNC1(phy, MDIO_DEV_PMA_PMD, AEL_I2C_STAT, &stat);
		if (err)
			return err;
		if ((stat & 3) == 1)
			return 0;
	}
	FUNC0(phy->adapter, "PHY %u i2c Write of dev.addr %x.%x = %#x timed out\n",
		phy->addr, dev_addr, word_addr, data);
	return -ETIMEDOUT;
}