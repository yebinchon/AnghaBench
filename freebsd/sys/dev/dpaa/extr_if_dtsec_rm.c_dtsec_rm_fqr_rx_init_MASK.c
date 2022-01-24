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
typedef  int /*<<< orphan*/ * t_Handle ;
typedef  scalar_t__ t_Error ;
struct dtsec_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_rx_fqid; int /*<<< orphan*/ * sc_rx_fqr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTSEC_RM_FQR_RX_CHANNEL ; 
 int /*<<< orphan*/  DTSEC_RM_FQR_RX_WQ ; 
 int EIO ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dtsec_rm_fqr_rx_callback ; 
 int /*<<< orphan*/  FUNC1 (struct dtsec_softc*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dtsec_softc*) ; 

int
FUNC5(struct dtsec_softc *sc)
{
	t_Error error;
	t_Handle fqr;

	/* Default Frame Queue */
	fqr = FUNC2(1, DTSEC_RM_FQR_RX_CHANNEL, DTSEC_RM_FQR_RX_WQ,
	    false, 0, false, false, true, false, 0, 0, 0);
	if (fqr == NULL) {
		FUNC0(sc->sc_dev, "could not create default RX queue"
		    "\n");
		return (EIO);
	}

	sc->sc_rx_fqr = fqr;
	sc->sc_rx_fqid = FUNC3(fqr);

	error = FUNC4(fqr, dtsec_rm_fqr_rx_callback, sc);
	if (error != E_OK) {
		FUNC0(sc->sc_dev, "could not register RX callback\n");
		FUNC1(sc);
		return (EIO);
	}

	return (0);
}