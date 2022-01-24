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
typedef  int uint32_t ;
struct ip17x_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IP175C_MODE_PHY ; 
 int /*<<< orphan*/  IP175C_MODE_REG ; 
 int /*<<< orphan*/  IP175C_RESET_PHY ; 
 int /*<<< orphan*/  IP175C_RESET_REG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct ip17x_softc *sc)
{
	uint32_t data;

	/* Reset all the switch settings. */
	if (FUNC2(sc->sc_dev, IP175C_RESET_PHY, IP175C_RESET_REG,
	    0x175c))
		return (-1);
	FUNC0(2000);

	/* Force IP175C mode. */
	data = FUNC1(sc->sc_dev, IP175C_MODE_PHY, IP175C_MODE_REG);
	if (data == 0x175a) {
		if (FUNC2(sc->sc_dev, IP175C_MODE_PHY, IP175C_MODE_REG,
		    0x175c))
		return (-1);
	}

	return (0);
}