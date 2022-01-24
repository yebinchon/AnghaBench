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
struct usb_proc_msg {int dummy; } ;
struct uaudio_softc {int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_rec_chan; int /*<<< orphan*/  sc_play_chan; } ;
struct uaudio_configure_msg {struct uaudio_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC0 (struct uaudio_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct usb_proc_msg *pm)
{
	struct uaudio_softc *sc = ((struct uaudio_configure_msg *)pm)->sc;

	FUNC2(sc->sc_udev);
	FUNC0(sc, &sc->sc_play_chan, PCMDIR_PLAY);
	FUNC0(sc, &sc->sc_rec_chan, PCMDIR_REC);
	FUNC1(sc->sc_udev);
}