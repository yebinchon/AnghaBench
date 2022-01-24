#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ kb_flags; } ;
struct ukbd_softc {int sc_flags; int /*<<< orphan*/  sc_callout; int /*<<< orphan*/ * sc_xfer; TYPE_1__ sc_kbd; int /*<<< orphan*/  sc_evdev; int /*<<< orphan*/  sc_ndata; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int UKBD_FLAG_ATTACHED ; 
 int UKBD_FLAG_GONE ; 
 size_t UKBD_INTR_DT_0 ; 
 size_t UKBD_INTR_DT_1 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  UKBD_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ukbd_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct ukbd_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct ukbd_softc *sc = FUNC4(dev);
	int error;

	FUNC2();

	FUNC0("\n");

	sc->sc_flags |= UKBD_FLAG_GONE;

	FUNC13(&sc->sc_callout);

	/* kill any stuck keys */
	if (sc->sc_flags & UKBD_FLAG_ATTACHED) {
		/* stop receiving events from the USB keyboard */
		FUNC14(sc->sc_xfer[UKBD_INTR_DT_0]);
		FUNC14(sc->sc_xfer[UKBD_INTR_DT_1]);

		/* release all leftover keys, if any */
		FUNC9(&sc->sc_ndata, 0, sizeof(sc->sc_ndata));

		/* process releasing of all keys */
		FUNC11(sc);
	}

	FUNC10(&sc->sc_kbd);

#ifdef KBD_INSTALL_CDEV
	if (sc->sc_flags & UKBD_FLAG_ATTACHED) {
		error = kbd_detach(&sc->sc_kbd);
		if (error) {
			/* usb attach cannot return an error */
			device_printf(dev, "WARNING: kbd_detach() "
			    "returned non-zero! (ignored)\n");
		}
	}
#endif

#ifdef EVDEV_SUPPORT
	evdev_free(sc->sc_evdev);
#endif

	if (FUNC1(&sc->sc_kbd)) {
		error = FUNC8(&sc->sc_kbd);
		if (error) {
			/* usb attach cannot return an error */
			FUNC5(dev, "WARNING: kbd_unregister() "
			    "returned non-zero! (ignored)\n");
		}
	}
	sc->sc_kbd.kb_flags = 0;

	FUNC15(sc->sc_xfer, UKBD_N_TRANSFER);

	FUNC12(&sc->sc_callout);

	FUNC0("%s: disconnected\n",
	    FUNC3(dev));

	return (0);
}