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
typedef  scalar_t__ uint32_t ;
struct videomode {int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct jzlcd_softc {int /*<<< orphan*/  dev; } ;
struct edid_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FB_DEFAULT_H ; 
 int /*<<< orphan*/  FB_DEFAULT_REF ; 
 int /*<<< orphan*/  FB_DEFAULT_W ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct videomode*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct edid_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct edid_info*) ; 
 int FUNC5 (struct jzlcd_softc*,struct videomode const*) ; 
 struct videomode* FUNC6 (struct edid_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct jzlcd_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct jzlcd_softc*) ; 
 struct videomode* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void *arg, device_t hdmi_dev)
{
	const struct videomode *mode;
	struct videomode hdmi_mode;
	struct jzlcd_softc *sc;
	struct edid_info ei;
	uint8_t *edid;
	uint32_t edid_len;
	int error;

	sc = arg;
	edid = NULL;
	edid_len = 0;
	mode = NULL;

	error = FUNC0(hdmi_dev, &edid, &edid_len);
	if (error != 0) {
		FUNC2(sc->dev, "failed to get EDID: %d\n", error);
	} else {
		error = FUNC3(edid, &ei);
		if (error != 0) {
			FUNC2(sc->dev, "failed to parse EDID: %d\n",
			    error);
		} else {
			if (bootverbose)
				FUNC4(&ei);

			mode = FUNC6(&ei);
		}
	}

	/* If a suitable mode could not be found, try the default */
	if (mode == NULL)
		mode = FUNC9(FB_DEFAULT_W, FB_DEFAULT_H,
		    FB_DEFAULT_REF);

	if (mode == NULL) {
		FUNC2(sc->dev, "failed to find usable video mode\n");
		return;
	}

	if (bootverbose)
		FUNC2(sc->dev, "using %dx%d\n",
		    mode->hdisplay, mode->vdisplay);

	/* Stop the controller */
	FUNC8(sc);

	/* Configure LCD controller */
	error = FUNC5(sc, mode);
	if (error != 0) {
		FUNC2(sc->dev, "failed to configure FB: %d\n", error);
		return;
	}

	/* Enable HDMI TX */
	hdmi_mode = *mode;
	FUNC1(hdmi_dev, &hdmi_mode);

	/* Start the controller! */
	FUNC7(sc);
}