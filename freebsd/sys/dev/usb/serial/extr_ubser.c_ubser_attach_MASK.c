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
typedef  size_t uint8_t ;
struct usb_device_request {int /*<<< orphan*/  wLength; scalar_t__* wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct TYPE_3__ {int /*<<< orphan*/  bIfaceIndex; scalar_t__ bIfaceNum; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
struct ubser_softc {scalar_t__ sc_numser; scalar_t__ sc_tx_size; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_super_ucom; TYPE_2__* sc_ucom; int /*<<< orphan*/  sc_iface_index; scalar_t__ sc_iface_no; int /*<<< orphan*/  sc_udev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {size_t sc_portno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 size_t UBSER_BULK_DT_RD ; 
 size_t UBSER_BULK_DT_WR ; 
 int /*<<< orphan*/  UBSER_N_TRANSFER ; 
 scalar_t__ UBSER_UNIT_MAX ; 
 int /*<<< orphan*/  USB_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_VENDOR_INTERFACE ; 
 int /*<<< orphan*/  VENDOR_GET_NUMSER ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 struct ubser_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ubser_callback ; 
 int /*<<< orphan*/  ubser_config ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,size_t,struct ubser_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ubser_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC2(dev);
	struct ubser_softc *sc = FUNC3(dev);
	struct usb_device_request req;
	uint8_t n;
	int error;

	FUNC5(dev);
	FUNC6(&sc->sc_mtx, "ubser", NULL, MTX_DEF);
	FUNC11(&sc->sc_super_ucom);

	sc->sc_iface_no = uaa->info.bIfaceNum;
	sc->sc_iface_index = uaa->info.bIfaceIndex;
	sc->sc_udev = uaa->device;

	/* get number of serials */
	req.bmRequestType = UT_READ_VENDOR_INTERFACE;
	req.bRequest = VENDOR_GET_NUMSER;
	FUNC1(req.wValue, 0);
	req.wIndex[0] = sc->sc_iface_no;
	req.wIndex[1] = 0;
	FUNC1(req.wLength, 1);
	error = FUNC13(uaa->device, NULL,
	    &req, &sc->sc_numser,
	    0, NULL, USB_DEFAULT_TIMEOUT);

	if (error || (sc->sc_numser == 0)) {
		FUNC4(dev, "failed to get number "
		    "of serial ports: %s\n",
		    FUNC14(error));
		goto detach;
	}
	if (sc->sc_numser > UBSER_UNIT_MAX)
		sc->sc_numser = UBSER_UNIT_MAX;

	FUNC4(dev, "found %i serials\n", sc->sc_numser);

	error = FUNC15(uaa->device, &sc->sc_iface_index,
	    sc->sc_xfer, ubser_config, UBSER_N_TRANSFER, sc, &sc->sc_mtx);
	if (error) {
		goto detach;
	}
	sc->sc_tx_size = FUNC17(sc->sc_xfer[UBSER_BULK_DT_WR]);

	if (sc->sc_tx_size == 0) {
		FUNC0(0, "invalid tx_size\n");
		goto detach;
	}
	/* initialize port numbers */

	for (n = 0; n < sc->sc_numser; n++) {
		sc->sc_ucom[n].sc_portno = n;
	}

	error = FUNC10(&sc->sc_super_ucom, sc->sc_ucom,
	    sc->sc_numser, sc, &ubser_callback, &sc->sc_mtx);
	if (error) {
		goto detach;
	}
	FUNC12(&sc->sc_super_ucom, dev);

	FUNC7(&sc->sc_mtx);
	FUNC18(sc->sc_xfer[UBSER_BULK_DT_WR]);
	FUNC18(sc->sc_xfer[UBSER_BULK_DT_RD]);
	FUNC16(sc->sc_xfer[UBSER_BULK_DT_RD]);
	FUNC8(&sc->sc_mtx);

	return (0);			/* success */

detach:
	FUNC9(dev);
	return (ENXIO);			/* failure */
}