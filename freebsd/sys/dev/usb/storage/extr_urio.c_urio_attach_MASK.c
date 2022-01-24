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
struct TYPE_2__ {int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int /*<<< orphan*/  device; } ;
struct urio_softc {int /*<<< orphan*/  sc_fifo; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_name; int /*<<< orphan*/  sc_udev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  URIO_T_MAX ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 struct urio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  urio_config ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  urio_fifo_methods ; 
 int FUNC9 (int /*<<< orphan*/ ,struct urio_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct urio_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC1(dev);
	struct urio_softc *sc = FUNC3(dev);
	int error;

	FUNC5(dev);

	sc->sc_udev = uaa->device;

	FUNC6(&sc->sc_mtx, "urio lock", NULL, MTX_DEF | MTX_RECURSE);

	FUNC7(sc->sc_name, sizeof(sc->sc_name),
	    "%s", FUNC2(dev));

	error = FUNC11(uaa->device,
	    &uaa->info.bIfaceIndex, sc->sc_xfer,
	    urio_config, URIO_T_MAX, sc, &sc->sc_mtx);

	if (error) {
		FUNC0("error=%s\n", FUNC10(error));
		goto detach;
	}

	error = FUNC9(uaa->device, sc, &sc->sc_mtx,
	    &urio_fifo_methods, &sc->sc_fifo,
	    FUNC4(dev), -1, uaa->info.bIfaceIndex,
	    UID_ROOT, GID_OPERATOR, 0644);
	if (error) {
		goto detach;
	}
	return (0);			/* success */

detach:
	FUNC8(dev);
	return (ENOMEM);		/* failure */
}