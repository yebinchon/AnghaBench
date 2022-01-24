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
struct e6000sw_softc {int num_ports; scalar_t__ vlan_mode; int* vlans; int /*<<< orphan*/  ports_mask; } ;

/* Variables and functions */
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ; 
 int /*<<< orphan*/  PORT_CONTROL ; 
 int /*<<< orphan*/  PORT_CONTROL2 ; 
 int PORT_CONTROL2_DOT1Q ; 
 int PORT_CONTROL_EGRESS ; 
 int PORT_CONTROL_ENABLE ; 
 int PORT_CONTROL_FRAME ; 
 int /*<<< orphan*/  PORT_VID ; 
 int PORT_VID_DEF_VID_MASK ; 
 int PORT_VID_PRIORITY_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct e6000sw_softc*,int) ; 
 scalar_t__ FUNC1 (struct e6000sw_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct e6000sw_softc*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct e6000sw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct e6000sw_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct e6000sw_softc*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct e6000sw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int*) ; 

__attribute__((used)) static int
FUNC8(struct e6000sw_softc *sc)
{
	int i, port, ret;
	uint32_t members;

	/* Disable all ports */
	for (port = 0; port < sc->num_ports; port++) {
		ret = FUNC3(sc, FUNC0(sc, port), PORT_CONTROL);
		FUNC6(sc, FUNC0(sc, port), PORT_CONTROL,
		    (ret & ~PORT_CONTROL_ENABLE));
	}

	/* Flush VTU. */
	FUNC4(sc);

	for (port = 0; port < sc->num_ports; port++) {
		/* Reset the egress and frame mode. */
		ret = FUNC3(sc, FUNC0(sc, port), PORT_CONTROL);
		ret &= ~(PORT_CONTROL_EGRESS | PORT_CONTROL_FRAME);
		FUNC6(sc, FUNC0(sc, port), PORT_CONTROL, ret);

		/* Set the the 802.1q mode. */
		ret = FUNC3(sc, FUNC0(sc, port), PORT_CONTROL2);
		ret &= ~PORT_CONTROL2_DOT1Q;
		if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q)
			ret |= PORT_CONTROL2_DOT1Q;
		FUNC6(sc, FUNC0(sc, port), PORT_CONTROL2, ret);
	}

	for (port = 0; port < sc->num_ports; port++) {
		if (!FUNC1(sc, port))
			continue;

		ret = FUNC3(sc, FUNC0(sc, port), PORT_VID);

		/* Set port priority */
		ret &= ~PORT_VID_PRIORITY_MASK;

		/* Set VID map */
		ret &= ~PORT_VID_DEF_VID_MASK;
		if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q)
			ret |= 1;
		else
			ret |= (port + 1);
		FUNC6(sc, FUNC0(sc, port), PORT_VID, ret);
	}

	/* Assign the member ports to each origin port. */
	for (port = 0; port < sc->num_ports; port++) {
		members = 0;
		if (FUNC1(sc, port)) {
			for (i = 0; i < sc->num_ports; i++) {
				if (i == port || !FUNC1(sc, i))
					continue;
				members |= (1 << i);
			}
		}
		/* Default to FID 0. */
		FUNC2(sc, port, 0, members);
	}

	/* Reset internal VLAN table. */
	for (i = 0; i < FUNC7(sc->vlans); i++)
		sc->vlans[i] = 0;

	/* Create default VLAN (1). */
	if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
		sc->vlans[0] = 1;
		FUNC5(sc, 0, sc->vlans[0], 1, 0, sc->ports_mask);
	}

	/* Enable all ports */
	for (port = 0; port < sc->num_ports; port++) {
		if (!FUNC1(sc, port))
			continue;
		ret = FUNC3(sc, FUNC0(sc, port), PORT_CONTROL);
		FUNC6(sc, FUNC0(sc, port), PORT_CONTROL,
		    (ret | PORT_CONTROL_ENABLE));
	}

	return (0);
}