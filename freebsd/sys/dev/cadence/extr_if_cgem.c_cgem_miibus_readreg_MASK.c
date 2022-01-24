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
struct cgem_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CGEM_NET_STAT ; 
 int CGEM_NET_STAT_PHY_MGMT_IDLE ; 
 int /*<<< orphan*/  CGEM_PHY_MAINT ; 
 int CGEM_PHY_MAINT_CLAUSE_22 ; 
 int CGEM_PHY_MAINT_DATA_MASK ; 
 int CGEM_PHY_MAINT_MUST_10 ; 
 int CGEM_PHY_MAINT_OP_READ ; 
 int CGEM_PHY_MAINT_PHY_ADDR_SHIFT ; 
 int CGEM_PHY_MAINT_REG_ADDR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXTSR_1000THDX ; 
 int EXTSR_1000XHDX ; 
 int MII_EXTSR ; 
 int FUNC1 (struct cgem_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cgem_softc*,int /*<<< orphan*/ ,int) ; 
 struct cgem_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg)
{
	struct cgem_softc *sc = FUNC3(dev);
	int tries, val;

	FUNC2(sc, CGEM_PHY_MAINT,
	    CGEM_PHY_MAINT_CLAUSE_22 | CGEM_PHY_MAINT_MUST_10 |
	    CGEM_PHY_MAINT_OP_READ |
	    (phy << CGEM_PHY_MAINT_PHY_ADDR_SHIFT) |
	    (reg << CGEM_PHY_MAINT_REG_ADDR_SHIFT));

	/* Wait for completion. */
	tries=0;
	while ((FUNC1(sc, CGEM_NET_STAT) & CGEM_NET_STAT_PHY_MGMT_IDLE) == 0) {
		FUNC0(5);
		if (++tries > 200) {
			FUNC4(dev, "phy read timeout: %d\n", reg);
			return (-1);
		}
	}

	val = FUNC1(sc, CGEM_PHY_MAINT) & CGEM_PHY_MAINT_DATA_MASK;

	if (reg == MII_EXTSR)
		/*
		 * MAC does not support half-duplex at gig speeds.
		 * Let mii(4) exclude the capability.
		 */
		val &= ~(EXTSR_1000XHDX | EXTSR_1000THDX);

	return (val);
}