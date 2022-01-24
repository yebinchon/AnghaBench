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
struct mx25l_softc {scalar_t__ sc_taskstate; int /*<<< orphan*/  sc_bio_queue; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; } ;
struct bio {int bio_cmd; int /*<<< orphan*/  bio_error; int /*<<< orphan*/  bio_bcount; int /*<<< orphan*/  bio_data; int /*<<< orphan*/  bio_offset; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mx25l_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mx25l_softc*) ; 
 int /*<<< orphan*/  PRIBIO ; 
 scalar_t__ TSTATE_STOPPED ; 
 scalar_t__ TSTATE_STOPPING ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mx25l_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mx25l_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mx25l_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mx25l_softc*) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct mx25l_softc *sc = (struct mx25l_softc*)arg;
	struct bio *bp;
	device_t dev;

	for (;;) {
		dev = sc->sc_dev;
		FUNC0(sc);
		do {
			if (sc->sc_taskstate == TSTATE_STOPPING) {
				sc->sc_taskstate = TSTATE_STOPPED;
				FUNC1(sc);
				FUNC9(sc);
				FUNC5(0);
			}
			bp = FUNC3(&sc->sc_bio_queue);
			if (bp == NULL)
				FUNC6(sc, &sc->sc_mtx, PRIBIO, "mx25jq", 0);
		} while (bp == NULL);
		FUNC4(&sc->sc_bio_queue, bp);
		FUNC1(sc);

		switch (bp->bio_cmd) {
		case BIO_READ:
			bp->bio_error = FUNC7(sc, bp->bio_offset, 
			    bp->bio_data, bp->bio_bcount);
			break;
		case BIO_WRITE:
			bp->bio_error = FUNC8(sc, bp->bio_offset, 
			    bp->bio_data, bp->bio_bcount);
			break;
		default:
			bp->bio_error = EINVAL;
		}


		FUNC2(bp);
	}
}