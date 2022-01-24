#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int /*<<< orphan*/  device; } ;
struct TYPE_4__ {scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;
struct uled_softc {TYPE_2__ sc_color; int /*<<< orphan*/  sc_fifo; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (struct usb_attach_arg*) ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 struct uled_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uled_fifo_methods ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct uled_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct usb_attach_arg *uaa;
	struct uled_softc *sc;
	int unit;
	usb_error_t error;

	uaa = FUNC1(dev);
	sc = FUNC2(dev);
	unit = FUNC3(dev);
	sc->sc_flags = FUNC0(uaa);

	FUNC4(dev);
	FUNC5(&sc->sc_mtx, "uled lock", NULL, MTX_DEF | MTX_RECURSE);

	sc->sc_udev = uaa->device;

	error = FUNC7(uaa->device, sc, &sc->sc_mtx,
	    &uled_fifo_methods, &sc->sc_fifo, unit, -1,
	    uaa->info.bIfaceIndex, UID_ROOT, GID_OPERATOR, 0644);
	if (error != 0)
		goto detach;

	sc->sc_color.red = 0;
	sc->sc_color.green = 0;
	sc->sc_color.blue = 0;

	return (0);

detach:
	FUNC6(dev);
	return (ENOMEM);
}