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
struct arswitch_softc {int numphys; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8X16_REG_VLAN_DATA ; 
 int /*<<< orphan*/  AR8X16_VLAN_OP_GET ; 
 int AR8X16_VLAN_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct arswitch_softc*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC1 (struct arswitch_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct arswitch_softc *sc, uint32_t *ports,
    uint32_t *untagged_ports, int vid)
{
	uint32_t reg;
	int err;

	FUNC0(sc, MA_OWNED);
	err = FUNC1(sc, AR8X16_VLAN_OP_GET, vid, 0);
	if (err)
		return (err);

	reg = FUNC2(sc->sc_dev, AR8X16_REG_VLAN_DATA);
	if ((reg & AR8X16_VLAN_VALID) == 0) {
		*ports = 0;
		return (EINVAL);
	}
	reg &= ((1 << (sc->numphys + 1)) - 1);
	*ports = reg;
	*untagged_ports = reg;
	return (0);
}