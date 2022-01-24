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
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct ieee80211com {int /*<<< orphan*/  ic_name; } ;
struct rtwn_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;
struct rtwn_usb_softc {int /*<<< orphan*/  uc_udev; struct rtwn_softc uc_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  FUNC0 (struct usb_attach_arg*) ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rtwn_usb_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_softc*) ; 
 int FUNC8 (struct rtwn_softc*) ; 
 int FUNC9 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtwn_usb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct rtwn_usb_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtwn_softc*) ; 

__attribute__((used)) static int
FUNC15(device_t self)
{
	struct usb_attach_arg *uaa = FUNC1(self);
	struct rtwn_usb_softc *uc = FUNC3(self);
	struct rtwn_softc *sc = &uc->uc_sc;
	struct ieee80211com *ic = &sc->sc_ic;
	int error;

	FUNC4(self);
	uc->uc_udev = uaa->device;
	sc->sc_dev = self;
	ic->ic_name = FUNC2(self);

	/* Need to be initialized early. */
	FUNC7(sc);
	FUNC14(sc);
	FUNC5(&sc->sc_mtx, ic->ic_name, MTX_NETWORK_LOCK, MTX_DEF);

	FUNC10(sc);
	FUNC11(uc, FUNC0(uaa));

	error = FUNC13(uc);
	if (error != 0)
		goto detach;

	/* Allocate Tx/Rx buffers. */
	error = FUNC8(sc);
	if (error != 0)
		goto detach;

	error = FUNC9(sc);
	if (error != 0)
		goto detach;

	/* Generic attach. */
	error = FUNC6(sc);
	if (error != 0)
		goto detach;

	return (0);

detach:
	FUNC12(self);		/* failure */
	return (ENXIO);
}