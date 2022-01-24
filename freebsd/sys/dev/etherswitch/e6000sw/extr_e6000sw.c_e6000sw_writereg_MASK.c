#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int sw_addr; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ e6000sw_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int SMI_CMD ; 
 int SMI_CMD_DEV_ADDR ; 
 int SMI_CMD_DEV_ADDR_MASK ; 
 int SMI_CMD_OP_C22_WRITE ; 
 int SMI_CMD_REG_ADDR_MASK ; 
 int SMI_DATA ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static __inline void
FUNC5(e6000sw_softc_t *sc, int addr, int reg, int val)
{

	FUNC0(sc, SA_XLOCKED);

	if (!FUNC2(sc)) {
		FUNC1(sc->dev, addr, reg, val);
		return;
	}

	if (FUNC3(sc, sc->sw_addr)) {
		FUNC4("e6000sw: readreg timeout\n");
		return;
	}
	FUNC1(sc->dev, sc->sw_addr, SMI_DATA, val);
	FUNC1(sc->dev, sc->sw_addr, SMI_CMD,
	    SMI_CMD_OP_C22_WRITE | (reg & SMI_CMD_REG_ADDR_MASK) |
	    ((addr << SMI_CMD_DEV_ADDR) & SMI_CMD_DEV_ADDR_MASK));
}