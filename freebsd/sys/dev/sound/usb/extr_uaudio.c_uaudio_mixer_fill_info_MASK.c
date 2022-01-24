#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct usb_device {int dummy; } ;
struct usb_descriptor {scalar_t__ bLength; scalar_t__ bDescriptorSubtype; } ;
struct usb_config_descriptor {int dummy; } ;
struct usb_audio_unit {size_t bUnitId; } ;
struct usb_audio_control_descriptor {int bLength; scalar_t__ bDescriptorType; scalar_t__ bDescriptorSubtype; int /*<<< orphan*/  bcdADC; int /*<<< orphan*/  wTotalLength; } ;
struct TYPE_6__ {struct usb_descriptor* desc; } ;
struct TYPE_7__ {int id_max; } ;
struct uaudio_terminal_node {TYPE_1__ u; struct uaudio_terminal_node* root; TYPE_2__ usr; } ;
struct TYPE_8__ {int is_input; scalar_t__ recurse_level; } ;
struct uaudio_softc {int sc_audio_rev; TYPE_5__ sc_mixer_clocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ UAUDIO_VERSION_20 ; 
 scalar_t__ UAUDIO_VERSION_30 ; 
#define  UDESCSUB_AC_CLOCK_MUL 142 
#define  UDESCSUB_AC_CLOCK_SEL 141 
#define  UDESCSUB_AC_CLOCK_SRC 140 
#define  UDESCSUB_AC_EFFECT 139 
#define  UDESCSUB_AC_EXTENSION 138 
#define  UDESCSUB_AC_EXTENSION_V2 137 
#define  UDESCSUB_AC_FEATURE 136 
#define  UDESCSUB_AC_HEADER 135 
#define  UDESCSUB_AC_INPUT 134 
#define  UDESCSUB_AC_MIXER 133 
#define  UDESCSUB_AC_OUTPUT 132 
#define  UDESCSUB_AC_PROCESSING 131 
#define  UDESCSUB_AC_PROCESSING_V2 130 
#define  UDESCSUB_AC_SAMPLE_RT 129 
#define  UDESCSUB_AC_SELECTOR 128 
 scalar_t__ UDESC_CS_INTERFACE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uaudio_terminal_node*,int /*<<< orphan*/ ) ; 
 struct uaudio_terminal_node* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uaudio_softc*,struct uaudio_terminal_node*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uaudio_softc*,struct uaudio_terminal_node*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct uaudio_softc*,struct uaudio_terminal_node*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct uaudio_terminal_node*,int*,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (struct uaudio_terminal_node*,int*,int,TYPE_2__*) ; 
 struct usb_audio_unit* FUNC10 (struct usb_descriptor const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct uaudio_softc*,struct uaudio_terminal_node*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct uaudio_softc*,struct uaudio_terminal_node*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct uaudio_softc*,struct uaudio_terminal_node*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct uaudio_softc*,struct uaudio_terminal_node*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct uaudio_softc*,struct uaudio_terminal_node*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct uaudio_terminal_node*,int*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (struct uaudio_terminal_node*,int,int,TYPE_2__*) ; 
 struct usb_audio_unit* FUNC18 (struct usb_descriptor const*,int /*<<< orphan*/ ) ; 
 void* FUNC19 (struct usb_config_descriptor*,void*) ; 
 struct usb_config_descriptor* FUNC20 (struct usb_device*) ; 

__attribute__((used)) static void
FUNC21(struct uaudio_softc *sc,
    struct usb_device *udev, void *desc)
{
	const struct usb_audio_control_descriptor *acdp;
	struct usb_config_descriptor *cd = FUNC20(udev);
	const struct usb_descriptor *dp;
	const struct usb_audio_unit *au;
	struct uaudio_terminal_node *iot = NULL;
	uint16_t wTotalLen;
	uint8_t ID_max = 0;		/* inclusive */
	uint8_t i;

	desc = FUNC19(cd, desc);

	if (desc == NULL) {
		FUNC0("no Audio Control header\n");
		goto done;
	}
	acdp = desc;

	if ((acdp->bLength < sizeof(*acdp)) ||
	    (acdp->bDescriptorType != UDESC_CS_INTERFACE) ||
	    (acdp->bDescriptorSubtype != UDESCSUB_AC_HEADER)) {
		FUNC0("invalid Audio Control header\n");
		goto done;
	}
	/* "wTotalLen" is allowed to be corrupt */
	wTotalLen = FUNC2(acdp->wTotalLength) - acdp->bLength;

	/* get USB audio revision */
	sc->sc_audio_rev = FUNC2(acdp->bcdADC);

	FUNC1(3, "found AC header, vers=%03x, len=%d\n",
	    sc->sc_audio_rev, wTotalLen);

	iot = FUNC4(sizeof(struct uaudio_terminal_node) * 256, M_TEMP,
	    M_WAITOK | M_ZERO);

	if (iot == NULL) {
		FUNC0("no memory!\n");
		goto done;
	}
	while ((desc = FUNC19(cd, desc))) {

		dp = desc;

		if (dp->bLength > wTotalLen) {
			break;
		} else {
			wTotalLen -= dp->bLength;
		}

		if (sc->sc_audio_rev >= UAUDIO_VERSION_30)
			au = NULL;
		else if (sc->sc_audio_rev >= UAUDIO_VERSION_20)
			au = FUNC10(dp, 0);
		else
			au = FUNC18(dp, 0);

		if (au) {
			iot[au->bUnitId].u.desc = (const void *)au;
			if (au->bUnitId > ID_max)
				ID_max = au->bUnitId;
		}
	}

	FUNC0("Maximum ID=%d\n", ID_max);

	/*
	 * determine sourcing inputs for
	 * all nodes in the tree:
	 */
	i = ID_max;
	do {
		if (sc->sc_audio_rev >= UAUDIO_VERSION_30) {
			/* FALLTHROUGH */
		} else if (sc->sc_audio_rev >= UAUDIO_VERSION_20) {
			FUNC9(iot,
			    &i, 1, &((iot + i)->usr));

			sc->sc_mixer_clocks.is_input = 255;
			sc->sc_mixer_clocks.recurse_level = 0;

			FUNC8(iot,
			    &i, 1, &sc->sc_mixer_clocks);
		} else {
			FUNC16(iot,
			    &i, 1, &((iot + i)->usr));
		}
	} while (i--);

	/*
	 * determine outputs for
	 * all nodes in the tree:
	 */
	i = ID_max;
	do {
		FUNC17(iot,
		    i, ID_max, &((iot + i)->usr));
	} while (i--);

	/* set "id_max" and "root" */

	i = ID_max;
	do {
		(iot + i)->usr.id_max = ID_max;
		(iot + i)->root = iot;
	} while (i--);

	/*
	 * Scan the config to create a linked list of "mixer" nodes:
	 */

	i = ID_max;
	do {
		dp = iot[i].u.desc;

		if (dp == NULL)
			continue;

		FUNC1(11, "id=%d subtype=%d\n",
		    i, dp->bDescriptorSubtype);

		if (sc->sc_audio_rev >= UAUDIO_VERSION_30) {
			continue;
		} else if (sc->sc_audio_rev >= UAUDIO_VERSION_20) {

			switch (dp->bDescriptorSubtype) {
			case UDESCSUB_AC_HEADER:
				FUNC0("unexpected AC header\n");
				break;

			case UDESCSUB_AC_INPUT:
			case UDESCSUB_AC_OUTPUT:
			case UDESCSUB_AC_PROCESSING_V2:
			case UDESCSUB_AC_EXTENSION_V2:
			case UDESCSUB_AC_EFFECT:
			case UDESCSUB_AC_CLOCK_SRC:
			case UDESCSUB_AC_CLOCK_SEL:
			case UDESCSUB_AC_CLOCK_MUL:
			case UDESCSUB_AC_SAMPLE_RT:
				break;

			case UDESCSUB_AC_MIXER:
				FUNC6(sc, iot, i);
				break;

			case UDESCSUB_AC_SELECTOR:
				FUNC7(sc, iot, i);
				break;

			case UDESCSUB_AC_FEATURE:
				FUNC5(sc, iot, i);
				break;

			default:
				FUNC0("bad AC desc subtype=0x%02x\n",
				    dp->bDescriptorSubtype);
				break;
			}
			continue;
		}

		switch (dp->bDescriptorSubtype) {
		case UDESCSUB_AC_HEADER:
			FUNC0("unexpected AC header\n");
			break;

		case UDESCSUB_AC_INPUT:
		case UDESCSUB_AC_OUTPUT:
			break;

		case UDESCSUB_AC_MIXER:
			FUNC13(sc, iot, i);
			break;

		case UDESCSUB_AC_SELECTOR:
			FUNC15(sc, iot, i);
			break;

		case UDESCSUB_AC_FEATURE:
			FUNC12(sc, iot, i);
			break;

		case UDESCSUB_AC_PROCESSING:
			FUNC14(sc, iot, i);
			break;

		case UDESCSUB_AC_EXTENSION:
			FUNC11(sc, iot, i);
			break;

		default:
			FUNC0("bad AC desc subtype=0x%02x\n",
			    dp->bDescriptorSubtype);
			break;
		}

	} while (i--);

done:
	FUNC3(iot, M_TEMP);
}