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
struct cfi_softc {int sc_width; scalar_t__ sc_size; scalar_t__ sc_wrofs; scalar_t__ sc_wrbufsz; scalar_t__ sc_wrbuf; scalar_t__ sc_writing; } ;
struct bio {scalar_t__ bio_offset; long bio_bcount; long bio_resid; int /*<<< orphan*/  bio_data; int /*<<< orphan*/  bio_flags; scalar_t__ bio_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 scalar_t__ EIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfi_softc*) ; 
 scalar_t__ FUNC5 (struct cfi_softc*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct cfi_softc *sc, struct bio *bp)
{
	long resid;
	u_int top;

	FUNC0(sc->sc_width == 1 || sc->sc_width == 2 || sc->sc_width == 4,
	    ("sc_width %d", sc->sc_width));

	if (bp->bio_offset > sc->sc_size) {
		bp->bio_flags |= BIO_ERROR;
		bp->bio_error = EIO;
		goto done;
	}
	resid = bp->bio_bcount;
	while (resid > 0) {
		/*
		 * Finish the current block if we're about to write
		 * to a different block.
		 */
		if (sc->sc_writing) {
			top = sc->sc_wrofs + sc->sc_wrbufsz;
			if (bp->bio_offset < sc->sc_wrofs ||
			    bp->bio_offset >= top)
				FUNC4(sc);
		}

		/* Start writing to a (new) block if applicable. */
		if (!sc->sc_writing) {
			bp->bio_error = FUNC5(sc, bp->bio_offset);
			if (bp->bio_error) {
				bp->bio_flags |= BIO_ERROR;
				goto done;
			}
		}

		top = sc->sc_wrofs + sc->sc_wrbufsz;
		FUNC2(bp->bio_data,
		    sc->sc_wrbuf + bp->bio_offset - sc->sc_wrofs,
		    FUNC1(top - bp->bio_offset, resid));
		resid -= FUNC1(top - bp->bio_offset, resid);
	}
	bp->bio_resid = resid;
done:
	FUNC3(bp);
}