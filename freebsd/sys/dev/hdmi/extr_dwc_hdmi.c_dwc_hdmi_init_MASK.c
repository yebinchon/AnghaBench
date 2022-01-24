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
struct TYPE_2__ {struct dwc_hdmi_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct dwc_hdmi_softc {int /*<<< orphan*/ * sc_edid; TYPE_1__ sc_mode_hook; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_edid_len; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDID_LENGTH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HDMI_DESIGN_ID ; 
 int /*<<< orphan*/  HDMI_IH_PHY_STAT0 ; 
 int /*<<< orphan*/  HDMI_IH_PHY_STAT0_HPD ; 
 int /*<<< orphan*/  HDMI_PHY_POL0 ; 
 int /*<<< orphan*/  HDMI_PHY_POL0_HPD ; 
 int /*<<< orphan*/  HDMI_PRODUCT_ID0 ; 
 int /*<<< orphan*/  HDMI_PRODUCT_ID1 ; 
 int /*<<< orphan*/  HDMI_REVISION_ID ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 struct dwc_hdmi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dwc_hdmi_detect_cable ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC7(device_t dev)
{
	struct dwc_hdmi_softc *sc;
	int err;

	sc = FUNC3(dev);
	err = 0;

	sc->sc_edid = FUNC6(EDID_LENGTH, M_DEVBUF, M_WAITOK | M_ZERO);
	sc->sc_edid_len = EDID_LENGTH;

	FUNC4(sc->sc_dev, "HDMI controller %02x:%02x:%02x:%02x\n",
	    FUNC0(sc, HDMI_DESIGN_ID), FUNC0(sc, HDMI_REVISION_ID),
	    FUNC0(sc, HDMI_PRODUCT_ID0), FUNC0(sc, HDMI_PRODUCT_ID1));

	FUNC1(sc, HDMI_PHY_POL0, HDMI_PHY_POL0_HPD);
	FUNC1(sc, HDMI_IH_PHY_STAT0, HDMI_IH_PHY_STAT0_HPD);

	sc->sc_mode_hook.ich_func = dwc_hdmi_detect_cable;
	sc->sc_mode_hook.ich_arg = sc;
	if (FUNC2(&sc->sc_mode_hook) != 0) {
		err = ENOMEM;
		goto out;
	}

out:

	if (err != 0) {
		FUNC5(sc->sc_edid, M_DEVBUF);
		sc->sc_edid = NULL;
	}

	return (err);
}