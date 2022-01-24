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
typedef  scalar_t__ u_int ;
struct uio {scalar_t__ uio_offset; scalar_t__ uio_resid; } ;
struct cfi_softc {scalar_t__ sc_size; scalar_t__ sc_wrofs; scalar_t__ sc_wrbufsz; scalar_t__ sc_wrbuf; scalar_t__ sc_writing; } ;
struct cdev {struct cfi_softc* si_drv1; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cfi_softc*) ; 
 int FUNC2 (struct cfi_softc*,scalar_t__) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct uio*) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct cfi_softc *sc;
	u_int ofs, top;
	int error;

	sc = dev->si_drv1;

	error = (uio->uio_offset > sc->sc_size) ? EIO : 0;
	while (error == 0 && uio->uio_resid > 0 &&
	    uio->uio_offset < sc->sc_size) {
		ofs = uio->uio_offset;

		/*
		 * Finish the current block if we're about to write
		 * to a different block.
		 */
		if (sc->sc_writing) {
			top = sc->sc_wrofs + sc->sc_wrbufsz;
			if (ofs < sc->sc_wrofs || ofs >= top)
				FUNC1(sc);
		}

		/* Start writing to a (new) block if applicable. */
		if (!sc->sc_writing) {
			error = FUNC2(sc, uio->uio_offset);
			if (error)
				break;
		}

		top = sc->sc_wrofs + sc->sc_wrbufsz;
		error = FUNC3(sc->sc_wrbuf + ofs - sc->sc_wrofs,
		    FUNC0(top - ofs, uio->uio_resid), uio);
	}
	return (error);
}