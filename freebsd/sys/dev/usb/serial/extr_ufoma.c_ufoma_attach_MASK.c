#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int bFunctionLength; scalar_t__ bType; int /*<<< orphan*/ * bMode; } ;
typedef  TYPE_2__ usb_mcpc_acm_descriptor ;
typedef  int uint8_t ;
struct usb_interface_descriptor {int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_config_descriptor {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; int /*<<< orphan*/  iface; } ;
struct TYPE_9__ {int /*<<< orphan*/  sc_unit; } ;
struct ufoma_softc {int sc_nobulk; int* sc_modetable; TYPE_4__ sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/ * sc_bulk_xfer; int /*<<< orphan*/  sc_modetoactivate; int /*<<< orphan*/  sc_currentmode; int /*<<< orphan*/  sc_ctrl_xfer; int /*<<< orphan*/  sc_ctrl_iface_index; int /*<<< orphan*/  sc_ctrl_iface_no; int /*<<< orphan*/  sc_cv; int /*<<< orphan*/  sc_unit; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_udev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_USBDEV ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct ufoma_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  UDESCSUB_MCPC_ACM ; 
 int /*<<< orphan*/  UDESC_VS_INTERFACE ; 
 size_t UFOMA_BULK_ENDPT_READ ; 
 size_t UFOMA_BULK_ENDPT_WRITE ; 
 int /*<<< orphan*/  UFOMA_CTRL_ENDPT_MAX ; 
 int /*<<< orphan*/  UMCPC_ACM_MODE_UNLINKED ; 
 scalar_t__ UMCPC_ACM_TYPE_AB5 ; 
 scalar_t__ UMCPC_ACM_TYPE_AB6 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct usb_attach_arg* FUNC5 (int /*<<< orphan*/ ) ; 
 struct ufoma_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC7 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int* FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (TYPE_4__*,int /*<<< orphan*/ *,int,struct ufoma_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ufoma_callback ; 
 int /*<<< orphan*/  ufoma_ctrl_config ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC21 (struct usb_config_descriptor*,struct usb_interface_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,struct ufoma_softc*,struct usb_attach_arg*) ; 
 int /*<<< orphan*/  ufoma_sysctl_current ; 
 int /*<<< orphan*/  ufoma_sysctl_open ; 
 int /*<<< orphan*/  ufoma_sysctl_support ; 
 struct usb_config_descriptor* FUNC23 (int /*<<< orphan*/ ) ; 
 struct usb_interface_descriptor* FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ufoma_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC5(dev);
	struct ufoma_softc *sc = FUNC6(dev);
	struct usb_config_descriptor *cd;
	struct usb_interface_descriptor *id;
	struct sysctl_ctx_list *sctx;
	struct sysctl_oid *soid;

	usb_mcpc_acm_descriptor *mad;
	uint8_t elements;
	int32_t error;

	sc->sc_udev = uaa->device;
	sc->sc_dev = dev;
	sc->sc_unit = FUNC9(dev);

	FUNC14(&sc->sc_mtx, "ufoma", NULL, MTX_DEF);
	FUNC18(&sc->sc_super_ucom);
	FUNC4(&sc->sc_cv, "CWAIT");

	FUNC11(dev);

	FUNC0("\n");

	/* setup control transfers */

	cd = FUNC23(uaa->device);
	id = FUNC24(uaa->iface);
	sc->sc_ctrl_iface_no = id->bInterfaceNumber;
	sc->sc_ctrl_iface_index = uaa->info.bIfaceIndex;

	error = FUNC25(uaa->device,
	    &sc->sc_ctrl_iface_index, sc->sc_ctrl_xfer,
	    ufoma_ctrl_config, UFOMA_CTRL_ENDPT_MAX, sc, &sc->sc_mtx);

	if (error) {
		FUNC10(dev, "allocating control USB "
		    "transfers failed\n");
		goto detach;
	}
	mad = FUNC21(cd, id, UDESC_VS_INTERFACE, UDESCSUB_MCPC_ACM);
	if (mad == NULL) {
		goto detach;
	}
	if (mad->bFunctionLength < sizeof(*mad)) {
		FUNC10(dev, "invalid MAD descriptor\n");
		goto detach;
	}
	if ((mad->bType == UMCPC_ACM_TYPE_AB5) ||
	    (mad->bType == UMCPC_ACM_TYPE_AB6)) {
		sc->sc_nobulk = 1;
	} else {
		sc->sc_nobulk = 0;
		if (FUNC22(dev, sc, uaa)) {
			goto detach;
		}
	}

	elements = (mad->bFunctionLength - sizeof(*mad) + 1);

	/* initialize mode variables */

	sc->sc_modetable = FUNC12(elements + 1, M_USBDEV, M_WAITOK);

	if (sc->sc_modetable == NULL) {
		goto detach;
	}
	sc->sc_modetable[0] = (elements + 1);
	FUNC13(&sc->sc_modetable[1], mad->bMode, elements);

	sc->sc_currentmode = UMCPC_ACM_MODE_UNLINKED;
	sc->sc_modetoactivate = mad->bMode[0];

	/* clear stall at first run, if any */
	FUNC15(&sc->sc_mtx);
	FUNC26(sc->sc_bulk_xfer[UFOMA_BULK_ENDPT_WRITE]);
	FUNC26(sc->sc_bulk_xfer[UFOMA_BULK_ENDPT_READ]);
	FUNC16(&sc->sc_mtx);

	error = FUNC17(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &ufoma_callback, &sc->sc_mtx);
	if (error) {
		FUNC0("ucom_attach failed\n");
		goto detach;
	}
	FUNC19(&sc->sc_super_ucom, dev);

	/*Sysctls*/
	sctx = FUNC7(dev);
	soid = FUNC8(dev);

	FUNC1(sctx, FUNC3(soid), OID_AUTO, "supportmode",
			CTLFLAG_RD|CTLTYPE_STRING, sc, 0, ufoma_sysctl_support,
			"A", "Supporting port role");

	FUNC1(sctx, FUNC3(soid), OID_AUTO, "currentmode",
			CTLFLAG_RD|CTLTYPE_STRING, sc, 0, ufoma_sysctl_current,
			"A", "Current port role");

	FUNC1(sctx, FUNC3(soid), OID_AUTO, "openmode",
			CTLFLAG_RW|CTLTYPE_STRING, sc, 0, ufoma_sysctl_open,
			"A", "Mode to transit when port is opened");
	FUNC2(sctx, FUNC3(soid), OID_AUTO, "comunit",
			CTLFLAG_RD, &(sc->sc_super_ucom.sc_unit), 0, 
			"Unit number as USB serial");

	return (0);			/* success */

detach:
	FUNC20(dev);
	return (ENXIO);			/* failure */
}