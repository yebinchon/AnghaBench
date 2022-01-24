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
struct dwc_hdmi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc_hdmi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc_hdmi_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct dwc_hdmi_softc *sc)
{
	int i;

	/* HDMI Phy spec says to do the phy initialization sequence twice */
	for (i = 0 ; i < 2 ; i++) {
		FUNC3(sc, 1);
		FUNC4(sc, 0);
		FUNC2(sc, 0);
		FUNC1(sc, 0);

		/* Enable CSC */
		FUNC0(sc);
	}
}