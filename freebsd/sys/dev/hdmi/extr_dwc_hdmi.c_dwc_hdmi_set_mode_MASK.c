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
struct dwc_hdmi_softc {int sc_has_audio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc_hdmi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_hdmi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc_hdmi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc_hdmi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc_hdmi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc_hdmi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc_hdmi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct dwc_hdmi_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc_hdmi_softc*) ; 

__attribute__((used)) static int
FUNC9(struct dwc_hdmi_softc *sc)
{

	/* XXX */
	sc->sc_has_audio = 1;

	FUNC3(sc);
	FUNC0(sc);
	FUNC5(sc);
	FUNC4(sc);
	FUNC2(sc);
	/* TODO:  dwc_hdmi_config_avi(sc); */
	FUNC7(sc);
	/* TODO:  dwc_hdmi_video_csc(sc); */
	FUNC8(sc);
	FUNC6(sc);
	FUNC1(sc);

	return (0);
}