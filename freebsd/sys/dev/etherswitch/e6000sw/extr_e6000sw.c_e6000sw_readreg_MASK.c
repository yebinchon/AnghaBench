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
typedef  int uint32_t ;
struct TYPE_6__ {int sw_addr; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ e6000sw_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  SMI_CMD ; 
 int SMI_CMD_DEV_ADDR ; 
 int SMI_CMD_DEV_ADDR_MASK ; 
 int SMI_CMD_OP_C22_READ ; 
 int SMI_CMD_REG_ADDR_MASK ; 
 int SMI_DATA ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static __inline uint32_t
FUNC6(e6000sw_softc_t *sc, int addr, int reg)
{

	FUNC0(sc, SA_XLOCKED);

	if (!FUNC3(sc))
		return (FUNC1(sc->dev, addr, reg) & 0xffff);

	if (FUNC4(sc, sc->sw_addr)) {
		FUNC5("e6000sw: readreg timeout\n");
		return (0xffff);
	}
	FUNC2(sc->dev, sc->sw_addr, SMI_CMD,
	    SMI_CMD_OP_C22_READ | (reg & SMI_CMD_REG_ADDR_MASK) |
	    ((addr << SMI_CMD_DEV_ADDR) & SMI_CMD_DEV_ADDR_MASK));
	if (FUNC4(sc, sc->sw_addr)) {
		FUNC5("e6000sw: readreg timeout\n");
		return (0xffff);
	}

	return (FUNC1(sc->dev, sc->sw_addr, SMI_DATA) & 0xffff);
}