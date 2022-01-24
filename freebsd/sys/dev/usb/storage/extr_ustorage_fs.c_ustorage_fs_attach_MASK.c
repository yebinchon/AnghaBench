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
struct ustorage_fs_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_xfer; void* sc_dma_ptr; void* sc_csw; void* sc_cbw; int /*<<< orphan*/  sc_iface_no; TYPE_1__* sc_lun; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_dev; } ;
struct usb_interface_descriptor {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_4__ {int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {TYPE_2__ info; int /*<<< orphan*/  device; int /*<<< orphan*/  iface; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int num_sectors; int removable; int /*<<< orphan*/ * memory_image; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  M_USB ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  USB_POWER_MODE_SAVE ; 
 int USTORAGE_FS_RAM_SECT ; 
 size_t USTORAGE_FS_T_BBB_COMMAND ; 
 size_t USTORAGE_FS_T_BBB_DATA_READ ; 
 int /*<<< orphan*/  USTORAGE_FS_T_BBB_MAX ; 
 size_t USTORAGE_FS_T_BBB_STATUS ; 
 struct usb_attach_arg* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ustorage_fs_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct usb_interface_descriptor* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ustorage_fs_softc*,int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ustorage_fs_bbb_config ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ustorage_fs_ramdisk ; 
 int /*<<< orphan*/  FUNC15 (struct ustorage_fs_softc*,size_t) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct ustorage_fs_softc *sc = FUNC1(dev);
	struct usb_attach_arg *uaa = FUNC0(dev);
	struct usb_interface_descriptor *id;
	int err;
	int unit;

	/*
	 * NOTE: the softc struct is cleared in device_set_driver.
	 * We can safely call ustorage_fs_detach without specifically
	 * initializing the struct.
	 */

	sc->sc_dev = dev;
	sc->sc_udev = uaa->device;
	unit = FUNC2(dev);

	/* enable power saving mode */
	FUNC11(uaa->device, USB_POWER_MODE_SAVE);

	if (unit == 0) {
		if (ustorage_fs_ramdisk == NULL) {
			/*
			 * allocate a memory image for our ramdisk until
			 * further
			 */
			ustorage_fs_ramdisk =
			    FUNC5(USTORAGE_FS_RAM_SECT << 9, M_USB,
			    M_ZERO | M_WAITOK);

			if (ustorage_fs_ramdisk == NULL) {
				return (ENOMEM);
			}
		}
		sc->sc_lun[0].memory_image = ustorage_fs_ramdisk;
		sc->sc_lun[0].num_sectors = USTORAGE_FS_RAM_SECT;
		sc->sc_lun[0].removable = 1;
	}

	FUNC4(dev);

	FUNC6(&sc->sc_mtx, "USTORAGE_FS lock",
	    NULL, (MTX_DEF | MTX_RECURSE));

	/* get interface index */

	id = FUNC10(uaa->iface);
	if (id == NULL) {
		FUNC3(dev, "failed to get "
		    "interface number\n");
		goto detach;
	}
	sc->sc_iface_no = id->bInterfaceNumber;

	err = FUNC12(uaa->device,
	    &uaa->info.bIfaceIndex, sc->sc_xfer, ustorage_fs_bbb_config,
	    USTORAGE_FS_T_BBB_MAX, sc, &sc->sc_mtx);
	if (err) {
		FUNC3(dev, "could not setup required "
		    "transfers, %s\n", FUNC9(err));
		goto detach;
	}

	sc->sc_cbw = FUNC13(sc->sc_xfer[
	    USTORAGE_FS_T_BBB_COMMAND], 0);
	sc->sc_csw = FUNC13(sc->sc_xfer[
	    USTORAGE_FS_T_BBB_STATUS], 0);
 	sc->sc_dma_ptr = FUNC13(sc->sc_xfer[
	    USTORAGE_FS_T_BBB_DATA_READ], 0);

	/* start Mass Storage State Machine */

	FUNC7(&sc->sc_mtx);
	FUNC15(sc, USTORAGE_FS_T_BBB_COMMAND);
	FUNC8(&sc->sc_mtx);

	return (0);			/* success */

detach:
	FUNC14(dev);
	return (ENXIO);			/* failure */
}