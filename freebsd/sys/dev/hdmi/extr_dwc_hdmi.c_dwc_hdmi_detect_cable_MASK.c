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
typedef  int uint32_t ;
struct dwc_hdmi_softc {int /*<<< orphan*/  sc_mode_hook; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI_EVENT_CONNECTED ; 
 int /*<<< orphan*/  HDMI_IH_PHY_STAT0 ; 
 int HDMI_IH_PHY_STAT0_HPD ; 
 int FUNC1 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hdmi_event ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct dwc_hdmi_softc *sc;
	uint32_t stat;

	sc = arg;

	stat = FUNC1(sc, HDMI_IH_PHY_STAT0);
	if ((stat & HDMI_IH_PHY_STAT0_HPD) != 0) {
		FUNC0(hdmi_event, sc->sc_dev,
		    HDMI_EVENT_CONNECTED);
	}

	/* Finished with the interrupt hook */
	FUNC2(&sc->sc_mode_hook);
}