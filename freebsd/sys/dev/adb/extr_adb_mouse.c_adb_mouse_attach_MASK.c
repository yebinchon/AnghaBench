#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_5__ {int buttons; int model; int hwid; void* type; int /*<<< orphan*/  iftype; } ;
struct TYPE_4__ {int rate; int resolution; int packetsize; scalar_t__ level; scalar_t__ accelfactor; int /*<<< orphan*/  protocol; } ;
struct adb_mouse_softc {TYPE_3__* cdev; scalar_t__ flags; TYPE_2__ hw; TYPE_1__ mode; scalar_t__ packet_read_len; scalar_t__ last_buttons; scalar_t__ button_buf; scalar_t__ sc_tapping; scalar_t__ buttons; int /*<<< orphan*/  sc_cv; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {struct adb_mouse_softc* si_drv1; } ;

/* Variables and functions */
 scalar_t__ AMS_EXTENDED ; 
 scalar_t__ AMS_TOUCHPAD ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  MOUSE_IF_UNKNOWN ; 
 void* MOUSE_MOUSE ; 
 void* MOUSE_PAD ; 
 int /*<<< orphan*/  MOUSE_PROTO_SYSMOUSE ; 
 void* MOUSE_TRACKBALL ; 
 void* MOUSE_UNKNOWN ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ams_cdevsw ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct adb_mouse_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC12(device_t dev) 
{
	struct adb_mouse_softc *sc;
	char *description = "Unknown Pointing Device";

	size_t r1_len;
	u_char r1[8];

	sc = FUNC6(dev);
	sc->sc_dev = dev;

	FUNC11(&sc->sc_mtx, "ams", NULL, MTX_DEF);
	FUNC5(&sc->sc_cv,"ams");

	sc->flags = 0;

	sc->hw.buttons = 2;
	sc->hw.iftype = MOUSE_IF_UNKNOWN;
	sc->hw.type = MOUSE_UNKNOWN;
	sc->hw.model = sc->hw.hwid = 0;

	sc->mode.protocol = MOUSE_PROTO_SYSMOUSE;
	sc->mode.rate = -1;
	sc->mode.resolution = 100;
	sc->mode.accelfactor = 0;
	sc->mode.level = 0;
	sc->mode.packetsize = 5;

	sc->buttons = 0;
	sc->sc_tapping = 0;
	sc->button_buf = 0;
	sc->last_buttons = 0;
	sc->packet_read_len = 0;

	/* Try to switch to extended protocol */
	FUNC4(dev,4);

	switch(FUNC0(dev)) {
	case 1:
		sc->mode.resolution = 100;
		break;
	case 2:
		sc->mode.resolution = 200;
		break;
	case 4:
		r1_len = FUNC2(dev,1,r1);
		if (r1_len < 8)
			break;

		sc->flags |= AMS_EXTENDED;
		FUNC10(&sc->hw.hwid,r1,4);
		sc->mode.resolution = (r1[4] << 8) | r1[5];

		switch (r1[6]) {
		case 0:
			sc->hw.type = MOUSE_PAD;
			description = "Tablet";
			break;
		case 1:
			sc->hw.type = MOUSE_MOUSE;
			description = "Mouse";
			break;
		case 2:
			sc->hw.type = MOUSE_TRACKBALL;
			description = "Trackball";
			break;
		case 3:
			sc->flags |= AMS_TOUCHPAD;
			sc->hw.type = MOUSE_PAD;
			FUNC1(dev);
			description = "Touchpad";
			break;
		}

		sc->hw.buttons = r1[7];

		FUNC8(dev,"%d-button %d-dpi %s\n",
		    sc->hw.buttons, sc->mode.resolution,description);

		/*
		 * Check for one of MacAlly's non-compliant 2-button mice.
		 * These claim to speak the extended mouse protocol, but
		 * instead speak the standard protocol and only when their
		 * handler is set to 0x42.
		 */

		if (sc->hw.hwid == 0x4b4f4954) {
			FUNC4(dev,0x42);

			if (FUNC0(dev) == 0x42) {
				FUNC8(dev, "MacAlly 2-Button Mouse\n");
				sc->flags &= ~AMS_EXTENDED;
			}
		}
			
		break;
	}

	sc->cdev = FUNC9(&ams_cdevsw, FUNC7(dev),
		       UID_ROOT, GID_OPERATOR, 0644, "ams%d", 
		       FUNC7(dev));
	sc->cdev->si_drv1 = sc;

	FUNC3(dev,1);

	return (0);
}