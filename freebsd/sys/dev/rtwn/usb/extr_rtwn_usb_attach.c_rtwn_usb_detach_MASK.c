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
struct rtwn_softc {int /*<<< orphan*/  sc_mtx; } ;
struct rtwn_usb_softc {int /*<<< orphan*/  uc_xfer; struct rtwn_softc uc_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  RTWN_N_TRANSFER ; 
 struct rtwn_usb_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t self)
{
	struct rtwn_usb_softc *uc = FUNC0(self);
	struct rtwn_softc *sc = &uc->uc_sc;

	/* Generic detach. */
	FUNC2(sc);

	/* Free Tx/Rx buffers. */
	FUNC5(sc);
	FUNC4(sc);

	/* Detach all USB transfers. */
	FUNC6(uc->uc_xfer, RTWN_N_TRANSFER);

	FUNC3(sc);
	FUNC1(&sc->sc_mtx);

	return (0);
}