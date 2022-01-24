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
struct usb_interface_descriptor {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_3__ {int /*<<< orphan*/  bIfaceNum; int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; int /*<<< orphan*/  iface; } ;
struct uhso_tty {size_t ht_muxport; char* ht_name; } ;
struct uhso_softc {int sc_radio; int sc_ttys; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_type; struct ucom_softc* sc_ucom; struct uhso_tty* sc_tty; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ctrl_xfer; int /*<<< orphan*/  sc_iface_index; int /*<<< orphan*/  sc_iface_no; int /*<<< orphan*/  sc_ctrl_iface_no; int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_rxq; int /*<<< orphan*/  sc_udev; } ;
struct ucom_softc {int sc_subunit; TYPE_2__* sc_super; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int sc_unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RWTUN ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct uhso_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_oid*) ; 
 scalar_t__ UHSO_AUTO_IFACE ; 
 int /*<<< orphan*/  UHSO_CTRL_MAX ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int UHSO_IF_MUX ; 
 scalar_t__ UHSO_STATIC_IFACE ; 
 scalar_t__ FUNC8 (struct usb_attach_arg*) ; 
 scalar_t__ bootverbose ; 
 struct usb_attach_arg* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct uhso_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC13 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uhso_ctrl_config ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int* uhso_mux_port_map ; 
 char** uhso_port ; 
 char** uhso_port_type ; 
 char** uhso_port_type_sysctl ; 
 int FUNC22 (struct uhso_softc*,int /*<<< orphan*/ ,void*) ; 
 void* uhso_probe_iface_auto ; 
 void* uhso_probe_iface_static ; 
 int /*<<< orphan*/  uhso_radio_sysctl ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__) ; 
 struct usb_interface_descriptor* FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uhso_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC28(device_t self)
{
	struct uhso_softc *sc = FUNC12(self);
	struct usb_attach_arg *uaa = FUNC9(self);
	struct usb_interface_descriptor *id;
	struct sysctl_ctx_list *sctx;
	struct sysctl_oid *soid;
	struct sysctl_oid *tree = NULL, *tty_node;
	struct ucom_softc *ucom;
	struct uhso_tty *ht;
	int i, error, port;
	void *probe_f;
	usb_error_t uerr;
	char *desc;

	sc->sc_dev = self;
	sc->sc_udev = uaa->device;
	FUNC18(&sc->sc_mtx, "uhso", NULL, MTX_DEF);
	FUNC17(&sc->sc_rxq, INT_MAX);	/* XXXGL: sane maximum */
	FUNC20(&sc->sc_super_ucom);

	sc->sc_radio = 1;

	id = FUNC26(uaa->iface);
	sc->sc_ctrl_iface_no = id->bInterfaceNumber;

	sc->sc_iface_no = uaa->info.bIfaceNum;
	sc->sc_iface_index = uaa->info.bIfaceIndex;

	/* Setup control pipe */
	uerr = FUNC27(uaa->device,
	    &sc->sc_iface_index, sc->sc_ctrl_xfer,
	    uhso_ctrl_config, UHSO_CTRL_MAX, sc, &sc->sc_mtx);
	if (uerr) {
		FUNC15(self, "Failed to setup control pipe: %s\n",
		    FUNC25(uerr));
		goto out;
	}

	if (FUNC8(uaa) == UHSO_STATIC_IFACE)
		probe_f = uhso_probe_iface_static;
	else if (FUNC8(uaa) == UHSO_AUTO_IFACE)
		probe_f = uhso_probe_iface_auto;
	else
		goto out;

	error = FUNC22(sc, uaa->info.bIfaceNum, probe_f);
	if (error != 0)
		goto out;

	sctx = FUNC13(sc->sc_dev);
	soid = FUNC14(sc->sc_dev);

	FUNC3(sctx, FUNC4(soid), OID_AUTO, "type",
	    CTLFLAG_RD, uhso_port[FUNC5(sc->sc_type)], 0,
	    "Port available at this interface");
	FUNC2(sctx, FUNC4(soid), OID_AUTO, "radio",
	    CTLTYPE_INT | CTLFLAG_RWTUN, sc, 0, uhso_radio_sysctl, "I", "Enable radio");

	/*
	 * The default interface description on most Option devices isn't
	 * very helpful. So we skip device_set_usb_desc and set the
	 * device description manually.
	 */
	FUNC16(self, uhso_port_type[FUNC6(sc->sc_type)]); 
	/* Announce device */
	FUNC15(self, "<%s port> at <%s %s> on %s\n",
	    uhso_port_type[FUNC6(sc->sc_type)],
	    FUNC23(uaa->device),
	    FUNC24(uaa->device),
	    FUNC10(FUNC11(self)));

	if (sc->sc_ttys > 0) {
		FUNC0(sctx, FUNC4(soid), OID_AUTO, "ports",
		    CTLFLAG_RD, &sc->sc_ttys, 0, "Number of attached serial ports");

		tree = FUNC1(sctx, FUNC4(soid), OID_AUTO,
		    "port", CTLFLAG_RD, NULL, "Serial ports");
	}

	/*
	 * Loop through the number of found TTYs and create sysctl
	 * nodes for them.
	 */
	for (i = 0; i < sc->sc_ttys; i++) {
		ht = &sc->sc_tty[i];
		ucom = &sc->sc_ucom[i];

		if (FUNC7(sc->sc_type) & UHSO_IF_MUX)
			port = uhso_mux_port_map[ht->ht_muxport];
		else
			port = FUNC6(sc->sc_type);

		desc = uhso_port_type_sysctl[port];

		tty_node = FUNC1(sctx, FUNC4(tree), OID_AUTO,
		    desc, CTLFLAG_RD, NULL, "");

		ht->ht_name[0] = 0;
		if (sc->sc_ttys == 1)
			FUNC19(ht->ht_name, 32, "cuaU%d", ucom->sc_super->sc_unit);
		else {
			FUNC19(ht->ht_name, 32, "cuaU%d.%d",
			    ucom->sc_super->sc_unit, ucom->sc_subunit);
		}

		desc = uhso_port_type[port];
		FUNC3(sctx, FUNC4(tty_node), OID_AUTO,
		    "tty", CTLFLAG_RD, ht->ht_name, 0, "");
		FUNC3(sctx, FUNC4(tty_node), OID_AUTO,
		    "desc", CTLFLAG_RD, desc, 0, "");

		if (bootverbose)
			FUNC15(sc->sc_dev,
			    "\"%s\" port at %s\n", desc, ht->ht_name);
	}

	return (0);
out:
	FUNC21(sc->sc_dev);
	return (ENXIO);
}