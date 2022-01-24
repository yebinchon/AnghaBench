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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int /*<<< orphan*/  device; } ;
struct ubtbcmfw_softc {int /*<<< orphan*/  sc_fifo; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_udev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  UBTBCMFW_IFACE_IDX ; 
 int /*<<< orphan*/  UBTBCMFW_N_TRANSFER ; 
 int /*<<< orphan*/  UID_ROOT ; 
 struct usb_attach_arg* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ubtbcmfw_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ubtbcmfw_config ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ubtbcmfw_fifo_methods ; 
 int FUNC7 (int /*<<< orphan*/ ,struct ubtbcmfw_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ubtbcmfw_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct usb_attach_arg	*uaa = FUNC0(dev);
	struct ubtbcmfw_softc	*sc = FUNC1(dev);
	uint8_t			iface_index;
	int			error;

	sc->sc_udev = uaa->device;

	FUNC4(dev);

	FUNC5(&sc->sc_mtx, "ubtbcmfw lock", NULL, MTX_DEF | MTX_RECURSE);

	iface_index = UBTBCMFW_IFACE_IDX;
	error = FUNC9(uaa->device, &iface_index, sc->sc_xfer,
				ubtbcmfw_config, UBTBCMFW_N_TRANSFER,
				sc, &sc->sc_mtx);
	if (error != 0) {
		FUNC3(dev, "allocating USB transfers failed. %s\n",
			FUNC8(error));
		goto detach;
	}

	error = FUNC7(uaa->device, sc, &sc->sc_mtx,
			&ubtbcmfw_fifo_methods, &sc->sc_fifo,
			FUNC2(dev), 0 - 1, uaa->info.bIfaceIndex,
			UID_ROOT, GID_OPERATOR, 0644);
	if (error != 0) {
		FUNC3(dev, "could not attach fifo. %s\n",
			FUNC8(error));
		goto detach;
	}

	return (0);	/* success */

detach:
	FUNC6(dev);

	return (ENXIO);	/* failure */
}