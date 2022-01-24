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
struct usb_fifo {int dummy; } ;
struct uhid_softc {scalar_t__ sc_osize; scalar_t__ sc_isize; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  UHID_FLAG_IMMED ; 
 int /*<<< orphan*/  UHID_FRAME_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct usb_fifo*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct uhid_softc* FUNC3 (struct usb_fifo*) ; 

__attribute__((used)) static int
FUNC4(struct usb_fifo *fifo, int fflags)
{
	struct uhid_softc *sc = FUNC3(fifo);

	/*
	 * The buffers are one byte larger than maximum so that one
	 * can detect too large read/writes and short transfers:
	 */
	if (fflags & FREAD) {
		/* reset flags */
		FUNC0(&sc->sc_mtx);
		sc->sc_flags &= ~UHID_FLAG_IMMED;
		FUNC1(&sc->sc_mtx);

		if (FUNC2(fifo,
		    sc->sc_isize + 1, UHID_FRAME_NUM)) {
			return (ENOMEM);
		}
	}
	if (fflags & FWRITE) {
		if (FUNC2(fifo,
		    sc->sc_osize + 1, UHID_FRAME_NUM)) {
			return (ENOMEM);
		}
	}
	return (0);
}