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
typedef  size_t uint32_t ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct umidi_sub_chan {int /*<<< orphan*/  fifo; } ;
struct umidi_chan {int single_command; scalar_t__ max_emb_jack; int /*<<< orphan*/  mtx; int /*<<< orphan*/ ** xfer; int /*<<< orphan*/  iface_index; struct umidi_sub_chan* sub; int /*<<< orphan*/  iface_alt_index; } ;
struct uaudio_softc {int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_mixer_iface_index; struct umidi_chan sc_midi_chan; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENXIO ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ UMIDI_EMB_JACK_MAX ; 
 int /*<<< orphan*/  UMIDI_N_TRANSFER ; 
 size_t UMIDI_RX_TRANSFER ; 
 size_t UMIDI_TX_TRANSFER ; 
 int /*<<< orphan*/  UQ_SINGLE_CMD_MIDI ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 struct uaudio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  umidi_config ; 
 int /*<<< orphan*/  umidi_fifo_methods ; 
 int FUNC7 (int /*<<< orphan*/ ,struct umidi_chan*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct usb_attach_arg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct umidi_chan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct uaudio_softc *sc = FUNC2(dev);
	struct usb_attach_arg *uaa = FUNC1(dev);
	struct umidi_chan *chan = &sc->sc_midi_chan;
	struct umidi_sub_chan *sub;
	int unit = FUNC3(dev);
	int error;
	uint32_t n;

	if (FUNC8(uaa, UQ_SINGLE_CMD_MIDI))
		chan->single_command = 1;

	if (FUNC10(sc->sc_udev, chan->iface_index,
	    chan->iface_alt_index)) {
		FUNC0("setting of alternate index failed!\n");
		goto detach;
	}
	FUNC11(sc->sc_udev, chan->iface_index,
	    sc->sc_mixer_iface_index);

	error = FUNC12(uaa->device, &chan->iface_index,
	    chan->xfer, umidi_config, UMIDI_N_TRANSFER,
	    chan, &chan->mtx);
	if (error) {
		FUNC0("error=%s\n", FUNC9(error));
		goto detach;
	}
	if (chan->xfer[UMIDI_TX_TRANSFER] == NULL &&
	    chan->xfer[UMIDI_RX_TRANSFER] == NULL) {
		FUNC0("no BULK or INTERRUPT MIDI endpoint(s) found\n");
		goto detach;
	}

	/*
	 * Some USB MIDI device makers couldn't resist using
	 * wMaxPacketSize = 4 for RX and TX BULK endpoints, although
	 * that size is an unsupported value for FULL speed BULK
	 * endpoints. The same applies to some HIGH speed MIDI devices
	 * which are using a wMaxPacketSize different from 512 bytes.
	 *
	 * Refer to section 5.8.3 in USB 2.0 PDF: Cite: "All Host
	 * Controllers are required to have support for 8-, 16-, 32-,
	 * and 64-byte maximum packet sizes for full-speed bulk
	 * endpoints and 512 bytes for high-speed bulk endpoints."
	 */
	if (chan->xfer[UMIDI_TX_TRANSFER] != NULL &&
	    FUNC14(chan->xfer[UMIDI_TX_TRANSFER]))
		chan->single_command = 1;

	if (chan->single_command != 0)
		FUNC4(dev, "Single command MIDI quirk enabled\n");

	if ((chan->max_emb_jack == 0) ||
	    (chan->max_emb_jack > UMIDI_EMB_JACK_MAX)) {
		chan->max_emb_jack = UMIDI_EMB_JACK_MAX;
	}

	for (n = 0; n < chan->max_emb_jack; n++) {

		sub = &chan->sub[n];

		error = FUNC7(sc->sc_udev, chan, &chan->mtx,
		    &umidi_fifo_methods, &sub->fifo, unit, n,
		    chan->iface_index,
		    UID_ROOT, GID_OPERATOR, 0644);
		if (error) {
			goto detach;
		}
	}

	FUNC5(&chan->mtx);

	/*
	 * NOTE: At least one device will not work properly unless the
	 * BULK IN pipe is open all the time. This might have to do
	 * about that the internal queues of the device overflow if we
	 * don't read them regularly.
	 */
	FUNC13(chan->xfer[UMIDI_RX_TRANSFER]);

	FUNC6(&chan->mtx);

	return (0);			/* success */

detach:
	return (ENXIO);			/* failure */
}