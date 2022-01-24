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
struct mgb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ,int) ; 
 int EIO ; 
 int /*<<< orphan*/  MGB_MII_ACCESS ; 
 int MGB_MII_BUSY ; 
 int /*<<< orphan*/  MGB_MII_DATA ; 
 int MGB_MII_PHY_ADDR_MASK ; 
 int MGB_MII_PHY_ADDR_SHIFT ; 
 int MGB_MII_REG_ADDR_MASK ; 
 int MGB_MII_REG_ADDR_SHIFT ; 
 int MGB_MII_WRITE ; 
 scalar_t__ MGB_STS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mgb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int phy, int reg, int data)
{
	struct mgb_softc *sc;
	int mii_access;

	sc = FUNC2(FUNC1(dev));

	if (FUNC3(sc, MGB_MII_ACCESS,
	    0, MGB_MII_BUSY) == MGB_STS_TIMEOUT)
		return EIO;
	mii_access = (phy & MGB_MII_PHY_ADDR_MASK) << MGB_MII_PHY_ADDR_SHIFT;
	mii_access |= (reg & MGB_MII_REG_ADDR_MASK) << MGB_MII_REG_ADDR_SHIFT;
	mii_access |= MGB_MII_BUSY | MGB_MII_WRITE;
	FUNC0(sc, MGB_MII_DATA, data);
	FUNC0(sc, MGB_MII_ACCESS, mii_access);
	if (FUNC3(sc, MGB_MII_ACCESS, 0, MGB_MII_BUSY) ==
	    MGB_STS_TIMEOUT)
		return EIO;
	return 0;
}