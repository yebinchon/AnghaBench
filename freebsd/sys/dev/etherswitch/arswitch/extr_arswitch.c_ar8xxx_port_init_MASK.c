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
struct arswitch_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8216 ; 
 scalar_t__ FUNC0 (struct arswitch_softc*,int /*<<< orphan*/ ) ; 
 int AR8X16_PORT_CPU ; 
 int AR8X16_PORT_CTRL_HEADER ; 
 int AR8X16_PORT_STS_DUPLEX ; 
 int AR8X16_PORT_STS_LINK_AUTO ; 
 int AR8X16_PORT_STS_RXFLOW ; 
 int AR8X16_PORT_STS_RXMAC ; 
 int AR8X16_PORT_STS_SPEED_100 ; 
 int AR8X16_PORT_STS_SPEED_1000 ; 
 int AR8X16_PORT_STS_TXFLOW ; 
 int AR8X16_PORT_STS_TXMAC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct arswitch_softc *sc, int port)
{

	/* Port0 - CPU */
	if (port == AR8X16_PORT_CPU) {
		FUNC4(sc->sc_dev, FUNC2(0),
		    (FUNC0(sc, AR8216) ?
		    AR8X16_PORT_STS_SPEED_100 : AR8X16_PORT_STS_SPEED_1000) |
		    (FUNC0(sc, AR8216) ? 0 : AR8X16_PORT_STS_RXFLOW) |
		    (FUNC0(sc, AR8216) ? 0 : AR8X16_PORT_STS_TXFLOW) |
		    AR8X16_PORT_STS_RXMAC |
		    AR8X16_PORT_STS_TXMAC |
		    AR8X16_PORT_STS_DUPLEX);
		FUNC4(sc->sc_dev, FUNC1(0),
		    FUNC3(sc->sc_dev, FUNC1(0)) &
		    ~AR8X16_PORT_CTRL_HEADER);
	} else {
		/* Set ports to auto negotiation. */
		FUNC4(sc->sc_dev, FUNC2(port),
		    AR8X16_PORT_STS_LINK_AUTO);
		FUNC4(sc->sc_dev, FUNC1(port),
		    FUNC3(sc->sc_dev, FUNC1(port)) &
		    ~AR8X16_PORT_CTRL_HEADER);
	}
}