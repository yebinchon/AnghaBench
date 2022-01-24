#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* arswitch_set_dot1q_vlan ) (struct arswitch_softc*,int,int,int) ;int /*<<< orphan*/  (* arswitch_vlan_set_pvid ) (struct arswitch_softc*,int,int) ;} ;
struct arswitch_softc {int* vid; scalar_t__ vlan_mode; TYPE_1__ hal; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8327_FWD_CTRL0_MIRROR_PORT ; 
 int AR8327_FWD_CTRL0_MIRROR_PORT_S ; 
 int AR8327_NUM_PORTS ; 
 int AR8327_PORT_LOOKUP_IN_MODE_S ; 
 int AR8327_PORT_LOOKUP_LEARN ; 
 int AR8327_PORT_LOOKUP_STATE_S ; 
 int AR8327_PORT_VLAN0_DEF_CVID_S ; 
 int AR8327_PORT_VLAN0_DEF_SVID_S ; 
 int AR8327_PORT_VLAN1_OUT_MODE_S ; 
 int AR8327_PORT_VLAN1_OUT_MODE_UNMOD ; 
 int AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH ; 
 int AR8327_PORT_VLAN1_PORT_VLAN_PROP ; 
 int /*<<< orphan*/  AR8327_REG_FWD_CTRL0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int AR8X16_PORT_CTRL_STATE_FORWARD ; 
 int AR8X16_PORT_VLAN_MODE_PORT_ONLY ; 
 int AR8X16_PORT_VLAN_MODE_SECURE ; 
 int /*<<< orphan*/  FUNC3 (struct arswitch_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct arswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct arswitch_softc*) ; 
 int ETHERSWITCH_VID_VALID ; 
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ; 
 scalar_t__ ETHERSWITCH_VLAN_PORT ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC6 (struct arswitch_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct arswitch_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct arswitch_softc*,int,int,int) ; 

__attribute__((used)) static void
FUNC12(struct arswitch_softc *sc)
{
	int i;
	uint32_t t;
	int ports;

	FUNC4(sc, MA_NOTOWNED);
	FUNC3(sc);

	/* Clear the existing VLAN configuration */
	FUNC9(sc->vid, 0, sizeof(sc->vid));

	/*
	 * Disable mirroring.
	 */
	FUNC7(sc->sc_dev, AR8327_REG_FWD_CTRL0,
	    AR8327_FWD_CTRL0_MIRROR_PORT,
	    (0xF << AR8327_FWD_CTRL0_MIRROR_PORT_S));

	/*
	 * XXX TODO: disable any Q-in-Q port configuration,
	 * tagging, egress filters, etc.
	 */

	/*
	 * For now, let's default to one portgroup, just so traffic
	 * flows.  All ports can see other ports. There are two CPU GMACs
	 * (GMAC0, GMAC6), GMAC1..GMAC5 are external PHYs.
	 *
	 * (ETHERSWITCH_VLAN_PORT)
	 */
	ports = 0x7f;

	/*
	 * XXX TODO: set things up correctly for vlans!
	 */
	for (i = 0; i < AR8327_NUM_PORTS; i++) {
		int egress, ingress;

		if (sc->vlan_mode == ETHERSWITCH_VLAN_PORT) {
			sc->vid[i] = i | ETHERSWITCH_VID_VALID;
			/* set egress == out_keep */
			ingress = AR8X16_PORT_VLAN_MODE_PORT_ONLY;
			/* in_port_only, forward */
			egress = AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH;
		} else if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
			ingress = AR8X16_PORT_VLAN_MODE_SECURE;
			egress = AR8327_PORT_VLAN1_OUT_MODE_UNMOD;
		} else {
			/* set egress == out_keep */
			ingress = AR8X16_PORT_VLAN_MODE_PORT_ONLY;
			/* in_port_only, forward */
			egress = AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH;
		}

		/* set pvid = 1; there's only one vlangroup to start with */
		t = 1 << AR8327_PORT_VLAN0_DEF_SVID_S;
		t |= 1 << AR8327_PORT_VLAN0_DEF_CVID_S;
		FUNC8(sc->sc_dev, FUNC1(i), t);

		t = AR8327_PORT_VLAN1_PORT_VLAN_PROP;
		t |= egress << AR8327_PORT_VLAN1_OUT_MODE_S;
		FUNC8(sc->sc_dev, FUNC2(i), t);

		/* Ports can see other ports */
		/* XXX not entirely true for dot1q? */
		t = (ports & ~(1 << i));	/* all ports besides us */
		t |= AR8327_PORT_LOOKUP_LEARN;

		t |= ingress << AR8327_PORT_LOOKUP_IN_MODE_S;
		t |= AR8X16_PORT_CTRL_STATE_FORWARD << AR8327_PORT_LOOKUP_STATE_S;
		FUNC8(sc->sc_dev, FUNC0(i), t);
	}

	/*
	 * Disable port mirroring entirely.
	 */
	for (i = 0; i < AR8327_NUM_PORTS; i++) {
		FUNC6(sc, i);
	}

	/*
	 * If dot1q - set pvid; dot1q, etc.
	 */
	if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
		sc->vid[0] = 1;
		for (i = 0; i < AR8327_NUM_PORTS; i++) {
			/* Each port - pvid 1 */
			sc->hal.arswitch_vlan_set_pvid(sc, i, sc->vid[0]);
		}
		/* Initialise vlan1 - all ports, untagged */
		sc->hal.arswitch_set_dot1q_vlan(sc, ports, ports, sc->vid[0]);
		sc->vid[0] |= ETHERSWITCH_VID_VALID;
	}

	FUNC5(sc);
}