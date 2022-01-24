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
typedef  int /*<<< orphan*/  tunable ;
struct dtsec_softc {int /*<<< orphan*/  sc_mode; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_start_locked; int /*<<< orphan*/  sc_port_tx_init; int /*<<< orphan*/  sc_port_rx_init; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTSEC_MODE_REGULAR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  dtsec_im_fm_port_rx_init ; 
 int /*<<< orphan*/  dtsec_im_fm_port_tx_init ; 
 int /*<<< orphan*/  dtsec_im_if_start_locked ; 
 int /*<<< orphan*/  dtsec_rm_fm_port_rx_init ; 
 int /*<<< orphan*/  dtsec_rm_fm_port_tx_init ; 
 int /*<<< orphan*/  dtsec_rm_if_start_locked ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC4(struct dtsec_softc *sc)
{
	char tunable[64];

	FUNC3(tunable, sizeof(tunable), "%s.independent_mode",
	    FUNC1(sc->sc_dev));

	sc->sc_mode = DTSEC_MODE_REGULAR;
	FUNC0(tunable, &sc->sc_mode);

	if (sc->sc_mode == DTSEC_MODE_REGULAR) {
		sc->sc_port_rx_init = dtsec_rm_fm_port_rx_init;
		sc->sc_port_tx_init = dtsec_rm_fm_port_tx_init;
		sc->sc_start_locked = dtsec_rm_if_start_locked;
	} else {
		sc->sc_port_rx_init = dtsec_im_fm_port_rx_init;
		sc->sc_port_tx_init = dtsec_im_fm_port_tx_init;
		sc->sc_start_locked = dtsec_im_if_start_locked;
	}

	FUNC2(sc->sc_dev, "Configured for %s mode.\n",
	    (sc->sc_mode == DTSEC_MODE_REGULAR) ? "regular" : "independent");
}