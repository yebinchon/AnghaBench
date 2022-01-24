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
struct TYPE_2__ {int port0_status; int port6_status; } ;
struct arswitch_softc {int /*<<< orphan*/  sc_dev; TYPE_1__ ar8327; } ;

/* Variables and functions */
 int AR8327_PORT_LOOKUP_LEARN ; 
 int AR8327_PORT_LOOKUP_STATE_S ; 
 int AR8327_PORT_VLAN0_DEF_CVID_S ; 
 int AR8327_PORT_VLAN0_DEF_SVID_S ; 
 int AR8327_PORT_VLAN1_OUT_MODE_S ; 
 int AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int AR8X16_PORT_CPU ; 
 int AR8X16_PORT_CTRL_STATE_FORWARD ; 
 int AR8X16_PORT_STS_LINK_AUTO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct arswitch_softc *sc, int port)
{
	uint32_t t;
	int ports;

	/* For now, port can see all other ports */
	ports = 0x7f;

	if (port == AR8X16_PORT_CPU)
		t = sc->ar8327.port0_status;
	else if (port == 6)
		t = sc->ar8327.port6_status;
        else
		t = AR8X16_PORT_STS_LINK_AUTO;

	FUNC5(sc->sc_dev, FUNC2(port), t);
	FUNC5(sc->sc_dev, FUNC0(port), 0);

	/*
	 * Default to 1 port group.
	 */
	t = 1 << AR8327_PORT_VLAN0_DEF_SVID_S;
	t |= 1 << AR8327_PORT_VLAN0_DEF_CVID_S;
	FUNC5(sc->sc_dev, FUNC3(port), t);

	t = AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH << AR8327_PORT_VLAN1_OUT_MODE_S;
	FUNC5(sc->sc_dev, FUNC4(port), t);

	/*
	 * This doesn't configure any ports which this port can "see".
	 * bits 0-6 control which ports a frame coming into this port
	 * can be sent out to.
	 *
	 * So by doing this, we're making it impossible to send frames out
	 * to that port.
	 */
	t = AR8327_PORT_LOOKUP_LEARN;
	t |= AR8X16_PORT_CTRL_STATE_FORWARD << AR8327_PORT_LOOKUP_STATE_S;

	/* So this allows traffic to any port except ourselves */
	t |= (ports & ~(1 << port));
	FUNC5(sc->sc_dev, FUNC1(port), t);
}