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
struct arswitch_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int AR8X16_PORT_VLAN_DEST_PORTS_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AR8X16_VLAN_MEMBER ; 
 int /*<<< orphan*/  FUNC1 (struct arswitch_softc*,int /*<<< orphan*/ ) ; 
 int ETHERSWITCH_VID_MASK ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct arswitch_softc *sc, uint32_t *ports, int vid)
{
	int port;
	uint32_t reg;

	FUNC1(sc, MA_OWNED);
	/* For port based vlans the vlanid is the same as the port index. */
	port = vid & ETHERSWITCH_VID_MASK;
	reg = FUNC2(sc->sc_dev, FUNC0(port));
	*ports = (reg >> AR8X16_PORT_VLAN_DEST_PORTS_SHIFT);
	*ports &= AR8X16_VLAN_MEMBER;
	return (0);
}