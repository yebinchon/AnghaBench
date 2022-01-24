#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_ether {int /*<<< orphan*/ * ue_methods; int /*<<< orphan*/ * ue_mtx; int /*<<< orphan*/  ue_udev; int /*<<< orphan*/  ue_dev; struct mos_softc* ue_sc; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct mos_softc {int mos_flags; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int MCS7730 ; 
 int MCS7830 ; 
 int MCS7832 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MOS_ENDPT_MAX ; 
 int /*<<< orphan*/  MOS_IFACE_IDX ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int FUNC1 (struct usb_attach_arg*) ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mos_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mos_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mos_ue_methods ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct usb_ether*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mos_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC2(dev);
	struct mos_softc *sc = FUNC4(dev);
	struct usb_ether *ue = &sc->sc_ue;
	uint8_t iface_index;
	int error;

	sc->mos_flags = FUNC1(uaa);

	FUNC6(dev);
	FUNC8(&sc->sc_mtx, FUNC3(dev), NULL, MTX_DEF);

	iface_index = MOS_IFACE_IDX;
	error = FUNC10(uaa->device, &iface_index,
	    sc->sc_xfer, mos_config, MOS_ENDPT_MAX,
	    sc, &sc->sc_mtx);

	if (error) {
		FUNC5(dev, "allocating USB transfers failed\n");
		goto detach;
	}
	ue->ue_sc = sc;
	ue->ue_dev = dev;
	ue->ue_udev = uaa->device;
	ue->ue_mtx = &sc->sc_mtx;
	ue->ue_methods = &mos_ue_methods;


	if (sc->mos_flags & MCS7730) {
		FUNC0("model: MCS7730");
	} else if (sc->mos_flags & MCS7830) {
		FUNC0("model: MCS7830");
	} else if (sc->mos_flags & MCS7832) {
		FUNC0("model: MCS7832");
	}
	error = FUNC9(ue);
	if (error) {
		FUNC5(dev, "could not attach interface\n");
		goto detach;
	}
	return (0);


detach:
	FUNC7(dev);
	return (ENXIO);
}