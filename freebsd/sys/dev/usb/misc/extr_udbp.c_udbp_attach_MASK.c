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
struct udbp_softc {char* sc_name; int /*<<< orphan*/ * sc_node; int /*<<< orphan*/  sc_xmitq_hipri; int /*<<< orphan*/  sc_xmitq; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct udbp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UDBP_Q_MAXLEN ; 
 int /*<<< orphan*/  UDBP_T_MAX ; 
 struct usb_attach_arg* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 struct udbp_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ng_udbp_typestruct ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  udbp_config ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udbp_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC4(dev);
	struct udbp_softc *sc = FUNC6(dev);
	int error;

	FUNC7(dev);

	FUNC12(sc->sc_name, sizeof(sc->sc_name),
	    "%s", FUNC5(dev));

	FUNC8(&sc->sc_mtx, "udbp lock", NULL, MTX_DEF | MTX_RECURSE);

	error = FUNC15(uaa->device, &uaa->info.bIfaceIndex,
	    sc->sc_xfer, udbp_config, UDBP_T_MAX, sc, &sc->sc_mtx);
	if (error) {
		FUNC0("error=%s\n", FUNC14(error));
		goto detach;
	}
	FUNC1(&sc->sc_xmitq, UDBP_Q_MAXLEN);

	FUNC1(&sc->sc_xmitq_hipri, UDBP_Q_MAXLEN);

	/* create Netgraph node */

	if (FUNC9(&ng_udbp_typestruct, &sc->sc_node) != 0) {
		FUNC11("%s: Could not create Netgraph node\n",
		    sc->sc_name);
		sc->sc_node = NULL;
		goto detach;
	}
	/* name node */

	if (FUNC10(sc->sc_node, sc->sc_name) != 0) {
		FUNC11("%s: Could not name node\n",
		    sc->sc_name);
		FUNC3(sc->sc_node);
		sc->sc_node = NULL;
		goto detach;
	}
	FUNC2(sc->sc_node, sc);

	/* the device is now operational */

	return (0);			/* success */

detach:
	FUNC13(dev);
	return (ENOMEM);		/* failure */
}