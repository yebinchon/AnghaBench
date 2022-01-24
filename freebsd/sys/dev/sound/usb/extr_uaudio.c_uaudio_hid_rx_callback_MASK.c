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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_xfer {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  volume_down_loc; int /*<<< orphan*/  volume_down_id; int /*<<< orphan*/  volume_up_loc; int /*<<< orphan*/  volume_up_id; int /*<<< orphan*/  mute_loc; int /*<<< orphan*/  mute_id; } ;
struct uaudio_softc {TYPE_1__ sc_hid; struct snd_mixer* sc_mixer_dev; } ;
struct snd_mixer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int UAUDIO_HID_HAS_ID ; 
 int UAUDIO_HID_HAS_MUTE ; 
 int UAUDIO_HID_HAS_VOLUME_DOWN ; 
 int UAUDIO_HID_HAS_VOLUME_UP ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_mixer*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 int /*<<< orphan*/ * FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*) ; 
 struct uaudio_softc* FUNC11 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct usb_xfer *xfer, usb_error_t error)
{
	struct uaudio_softc *sc = FUNC11(xfer);
	const uint8_t *buffer = FUNC7(xfer, 0);
	struct snd_mixer *m;
	uint8_t id;
	int actlen;

	FUNC12(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0("actlen=%d\n", actlen);

		if (actlen != 0 &&
		    (sc->sc_hid.flags & UAUDIO_HID_HAS_ID)) {
			id = *buffer;
			buffer++;
			actlen--;
		} else {
			id = 0;
		}

		m = sc->sc_mixer_dev;

		if ((sc->sc_hid.flags & UAUDIO_HID_HAS_MUTE) &&
		    (sc->sc_hid.mute_id == id) &&
		    FUNC2(buffer, actlen,
		    &sc->sc_hid.mute_loc)) {

			FUNC0("Mute toggle\n");

			FUNC3(m);
		}

		if ((sc->sc_hid.flags & UAUDIO_HID_HAS_VOLUME_UP) &&
		    (sc->sc_hid.volume_up_id == id) &&
		    FUNC2(buffer, actlen,
		    &sc->sc_hid.volume_up_loc)) {

			FUNC0("Volume Up\n");

			FUNC4(m, 1, 1);
		}

		if ((sc->sc_hid.flags & UAUDIO_HID_HAS_VOLUME_DOWN) &&
		    (sc->sc_hid.volume_down_id == id) &&
		    FUNC2(buffer, actlen,
		    &sc->sc_hid.volume_down_loc)) {

			FUNC0("Volume Down\n");

			FUNC4(m, -1, -1);
		}

	case USB_ST_SETUP:
tr_setup:
		/* check if we can put more data into the FIFO */
		FUNC9(xfer, 0, FUNC8(xfer));
		FUNC6(xfer);
		break;

	default:			/* Error */

		FUNC0("error=%s\n", FUNC5(error));

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC10(xfer);
			goto tr_setup;
		}
		break;
	}
}