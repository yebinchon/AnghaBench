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
struct TYPE_2__ {int /*<<< orphan*/  bIfaceIndex; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_attach_arg {TYPE_1__ info; int /*<<< orphan*/  device; } ;
struct uep_softc {scalar_t__ buf_len; int /*<<< orphan*/  fifo; int /*<<< orphan*/  mtx; int /*<<< orphan*/  evdev; int /*<<< orphan*/  xfer; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_USB ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_SYN ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  INPUT_PROP_DIRECT ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  UEP_MAX_X ; 
 int /*<<< orphan*/  UEP_MAX_Y ; 
 int /*<<< orphan*/  UEP_N_TRANSFER ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct uep_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct uep_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uep_config ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uep_evdev_methods ; 
 int /*<<< orphan*/  uep_fifo_methods ; 
 int FUNC20 (int /*<<< orphan*/ ,struct uep_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uep_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC24(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC2(dev);
	struct uep_softc *sc = FUNC4(dev);
	int error;

	FUNC6(dev);

	FUNC18(&sc->mtx, "uep lock", NULL, MTX_DEF);

	error = FUNC23(uaa->device, &uaa->info.bIfaceIndex,
	    sc->xfer, uep_config, UEP_N_TRANSFER, sc, &sc->mtx);

	if (error) {
		FUNC0("usbd_transfer_setup error=%s\n", FUNC22(error));
		goto detach;
	}

#ifdef EVDEV_SUPPORT
	sc->evdev = evdev_alloc();
	evdev_set_name(sc->evdev, device_get_desc(dev));
	evdev_set_phys(sc->evdev, device_get_nameunit(dev));
	evdev_set_id(sc->evdev, BUS_USB, uaa->info.idVendor,
	    uaa->info.idProduct, 0);
	evdev_set_serial(sc->evdev, usb_get_serial(uaa->device));
	evdev_set_methods(sc->evdev, sc, &uep_evdev_methods);
	evdev_support_prop(sc->evdev, INPUT_PROP_DIRECT);
	evdev_support_event(sc->evdev, EV_SYN);
	evdev_support_event(sc->evdev, EV_ABS);
	evdev_support_event(sc->evdev, EV_KEY);
	evdev_support_key(sc->evdev, BTN_TOUCH);
	evdev_support_abs(sc->evdev, ABS_X, 0, 0, UEP_MAX_X, 0, 0, 0);
	evdev_support_abs(sc->evdev, ABS_Y, 0, 0, UEP_MAX_Y, 0, 0, 0);

	error = evdev_register_mtx(sc->evdev, &sc->mtx);
	if (error) {
		DPRINTF("evdev_register_mtx error=%s\n", usbd_errstr(error));
		goto detach;
	}
#else /* !EVDEV_SUPPORT */
	error = FUNC20(uaa->device, sc, &sc->mtx, &uep_fifo_methods,
	    &sc->fifo, FUNC5(dev), -1, uaa->info.bIfaceIndex,
	    UID_ROOT, GID_OPERATOR, 0644);

        if (error) {
		FUNC0("usb_fifo_attach error=%s\n", FUNC22(error));
                goto detach;
        }
#endif /* !EVDEV_SUPPORT */

	sc->buf_len = 0;

	return (0);	

detach:
	FUNC19(dev);

	return (ENOMEM); /* XXX */
}