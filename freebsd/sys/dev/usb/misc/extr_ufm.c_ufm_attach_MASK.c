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
struct ufm_softc {int /*<<< orphan*/  sc_fifo; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_name; int /*<<< orphan*/  sc_unit; int /*<<< orphan*/  sc_udev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  UID_ROOT ; 
 struct usb_attach_arg* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ufm_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ufm_fifo_methods ; 
 int FUNC8 (int /*<<< orphan*/ ,struct ufm_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC0(dev);
	struct ufm_softc *sc = FUNC2(dev);
	int error;

	sc->sc_udev = uaa->device;
	sc->sc_unit = FUNC3(dev);

	FUNC6(sc->sc_name, sizeof(sc->sc_name), "%s",
	    FUNC1(dev));

	FUNC5(&sc->sc_mtx, "ufm lock", NULL, MTX_DEF | MTX_RECURSE);

	FUNC4(dev);

	error = FUNC8(uaa->device, sc, &sc->sc_mtx,
	    &ufm_fifo_methods, &sc->sc_fifo,
	    FUNC3(dev), -1, uaa->info.bIfaceIndex,
	    UID_ROOT, GID_OPERATOR, 0644);
	if (error) {
		goto detach;
	}
	return (0);			/* success */

detach:
	FUNC7(dev);
	return (ENXIO);
}