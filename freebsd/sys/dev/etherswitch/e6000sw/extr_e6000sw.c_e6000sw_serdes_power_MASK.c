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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  E6000SW_SERDES_DEV ; 
 int /*<<< orphan*/  E6000SW_SERDES_PCS_CTL1 ; 
 int /*<<< orphan*/  E6000SW_SERDES_PDOWN ; 
 int /*<<< orphan*/  E6000SW_SERDES_SGMII_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev, int port, bool sgmii)
{
	uint32_t reg;

	/* SGMII */
	reg = FUNC0(dev, port, E6000SW_SERDES_DEV,
	    E6000SW_SERDES_SGMII_CTL);
	if (sgmii)
		reg &= ~E6000SW_SERDES_PDOWN;
	else
		reg |= E6000SW_SERDES_PDOWN;
	FUNC1(dev, port, E6000SW_SERDES_DEV,
	    E6000SW_SERDES_SGMII_CTL, reg);

	/* 10GBASE-R/10GBASE-X4/X2 */
	reg = FUNC0(dev, port, E6000SW_SERDES_DEV,
	    E6000SW_SERDES_PCS_CTL1);
	if (sgmii)
		reg |= E6000SW_SERDES_PDOWN;
	else
		reg &= ~E6000SW_SERDES_PDOWN;
	FUNC1(dev, port, E6000SW_SERDES_DEV,
	    E6000SW_SERDES_PCS_CTL1, reg);
}