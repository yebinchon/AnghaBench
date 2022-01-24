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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  bIfaceNum; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
struct ucycom_softc {scalar_t__ sc_model; int sc_flen; int sc_ilen; int sc_olen; int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_iface_no; int /*<<< orphan*/  sc_oid; int /*<<< orphan*/  sc_iid; int /*<<< orphan*/  sc_fid; int /*<<< orphan*/  sc_udev; } ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_USBDEV ; 
 int /*<<< orphan*/  UCYCOM_IFACE_INDEX ; 
 int UCYCOM_MAX_IOLEN ; 
 int /*<<< orphan*/  UCYCOM_N_TRANSFER ; 
 scalar_t__ FUNC1 (struct usb_attach_arg*) ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 struct ucycom_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hid_feature ; 
 int /*<<< orphan*/  hid_input ; 
 int /*<<< orphan*/  hid_output ; 
 void* FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct ucycom_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ucycom_callback ; 
 int /*<<< orphan*/  ucycom_config ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucycom_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC2(dev);
	struct ucycom_softc *sc = FUNC3(dev);
	void *urd_ptr = NULL;
	int32_t error;
	uint16_t urd_len;
	uint8_t iface_index;

	sc->sc_udev = uaa->device;

	FUNC5(dev);
	FUNC8(&sc->sc_mtx, "ucycom", NULL, MTX_DEF);
	FUNC10(&sc->sc_super_ucom);

	FUNC0("\n");

	/* get chip model */
	sc->sc_model = FUNC1(uaa);
	if (sc->sc_model == 0) {
		FUNC4(dev, "unsupported device\n");
		goto detach;
	}
	FUNC4(dev, "Cypress CY7C%X USB to RS232 bridge\n", sc->sc_model);

	/* get report descriptor */

	error = FUNC14(uaa->device, NULL,
	    &urd_ptr, &urd_len, M_USBDEV,
	    UCYCOM_IFACE_INDEX);

	if (error) {
		FUNC4(dev, "failed to get report "
		    "descriptor: %s\n",
		    FUNC13(error));
		goto detach;
	}
	/* get report sizes */

	sc->sc_flen = FUNC7(urd_ptr, urd_len, hid_feature, &sc->sc_fid);
	sc->sc_ilen = FUNC7(urd_ptr, urd_len, hid_input, &sc->sc_iid);
	sc->sc_olen = FUNC7(urd_ptr, urd_len, hid_output, &sc->sc_oid);

	if ((sc->sc_ilen > UCYCOM_MAX_IOLEN) || (sc->sc_ilen < 1) ||
	    (sc->sc_olen > UCYCOM_MAX_IOLEN) || (sc->sc_olen < 2) ||
	    (sc->sc_flen > UCYCOM_MAX_IOLEN) || (sc->sc_flen < 5)) {
		FUNC4(dev, "invalid report size i=%d, o=%d, f=%d, max=%d\n",
		    sc->sc_ilen, sc->sc_olen, sc->sc_flen,
		    UCYCOM_MAX_IOLEN);
		goto detach;
	}
	sc->sc_iface_no = uaa->info.bIfaceNum;

	iface_index = UCYCOM_IFACE_INDEX;
	error = FUNC15(uaa->device, &iface_index,
	    sc->sc_xfer, ucycom_config, UCYCOM_N_TRANSFER,
	    sc, &sc->sc_mtx);
	if (error) {
		FUNC4(dev, "allocating USB "
		    "transfers failed\n");
		goto detach;
	}
	error = FUNC9(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &ucycom_callback, &sc->sc_mtx);
	if (error) {
		goto detach;
	}
	FUNC11(&sc->sc_super_ucom, dev);

	if (urd_ptr) {
		FUNC6(urd_ptr, M_USBDEV);
	}

	return (0);			/* success */

detach:
	if (urd_ptr) {
		FUNC6(urd_ptr, M_USBDEV);
	}
	FUNC12(dev);
	return (ENXIO);
}