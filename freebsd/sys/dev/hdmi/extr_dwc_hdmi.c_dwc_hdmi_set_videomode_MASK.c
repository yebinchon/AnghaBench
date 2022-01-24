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
struct videomode {int dummy; } ;
struct dwc_hdmi_softc {int /*<<< orphan*/  sc_mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct dwc_hdmi_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_hdmi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc_hdmi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct videomode const*,int) ; 

int
FUNC4(device_t dev, const struct videomode *mode)
{
	struct dwc_hdmi_softc *sc;

	sc = FUNC0(dev);
	FUNC3(&sc->sc_mode, mode, sizeof(*mode));

	FUNC1(sc);

	FUNC2(sc);

	return (0);
}