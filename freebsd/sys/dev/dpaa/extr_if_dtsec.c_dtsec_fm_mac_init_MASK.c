#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  h_Fm; struct dtsec_softc* h_App; int /*<<< orphan*/  f_Exception; int /*<<< orphan*/  f_Event; int /*<<< orphan*/  mdioIrq; int /*<<< orphan*/  macId; int /*<<< orphan*/  enetMode; int /*<<< orphan*/  baseAddr; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ t_FmMacParams ;
typedef  scalar_t__ t_Error ;
struct dtsec_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_mach; int /*<<< orphan*/  sc_fmh; int /*<<< orphan*/  sc_mac_mdio_irq; int /*<<< orphan*/  sc_eth_id; int /*<<< orphan*/  sc_mac_enet_mode; int /*<<< orphan*/  sc_mem; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dtsec_fm_mac_exception_callback ; 
 int /*<<< orphan*/  FUNC5 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  dtsec_fm_mac_mdio_event_callback ; 
 int /*<<< orphan*/  e_FM_MAC_EX_1G_RX_CTL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct dtsec_softc *sc, uint8_t *mac)
{
	t_FmMacParams params;
	t_Error error;

	FUNC7(&params, 0, sizeof(params));
	FUNC6(&params.addr, mac, sizeof(params.addr));

	params.baseAddr = FUNC8(sc->sc_mem);
	params.enetMode = sc->sc_mac_enet_mode;
	params.macId = sc->sc_eth_id;
	params.mdioIrq = sc->sc_mac_mdio_irq;
	params.f_Event = dtsec_fm_mac_mdio_event_callback;
	params.f_Exception = dtsec_fm_mac_exception_callback;
	params.h_App = sc;
	params.h_Fm = sc->sc_fmh;

	sc->sc_mach = FUNC0(&params);
	if (sc->sc_mach == NULL) {
		FUNC4(sc->sc_dev, "couldn't configure FM_MAC module.\n"
		    );
		return (ENXIO);
	}

	error = FUNC2(sc->sc_mach, TRUE);
	if (error != E_OK) {
		FUNC4(sc->sc_dev, "couldn't enable reset on init "
		    "feature.\n");
		FUNC5(sc);
		return (ENXIO);
	}

	/* Do not inform about pause frames */
	error = FUNC1(sc->sc_mach, e_FM_MAC_EX_1G_RX_CTL,
	    FALSE);
	if (error != E_OK) {
		FUNC4(sc->sc_dev, "couldn't disable pause frames "
			"exception.\n");
		FUNC5(sc);
		return (ENXIO);
	}

	error = FUNC3(sc->sc_mach);
	if (error != E_OK) {
		FUNC4(sc->sc_dev, "couldn't initialize FM_MAC module."
		    "\n");
		FUNC5(sc);
		return (ENXIO);
	}

	return (0);
}