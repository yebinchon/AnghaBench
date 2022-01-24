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
struct mtkswitch_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTKSWITCH_PIAC ; 
 int FUNC0 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 int PIAC_MDIO_CMD_WRITE ; 
 int PIAC_MDIO_PHY_ADDR_OFF ; 
 int PIAC_MDIO_REG_ADDR_OFF ; 
 int PIAC_MDIO_RW_DATA_MASK ; 
 int PIAC_MDIO_ST ; 
 int PIAC_PHY_ACS_ST ; 

__attribute__((used)) static int
FUNC2(struct mtkswitch_softc *sc, int phy, int reg,
    int val)
{

	FUNC1(sc, MTKSWITCH_PIAC, PIAC_PHY_ACS_ST | PIAC_MDIO_ST |
	    (reg << PIAC_MDIO_REG_ADDR_OFF) | (phy << PIAC_MDIO_PHY_ADDR_OFF) |
	    (val & PIAC_MDIO_RW_DATA_MASK) | PIAC_MDIO_CMD_WRITE);
	while (FUNC0(sc, MTKSWITCH_PIAC) & PIAC_PHY_ACS_ST);

	return (0);
}