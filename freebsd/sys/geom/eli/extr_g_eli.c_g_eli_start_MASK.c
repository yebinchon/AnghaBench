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
struct g_eli_softc {int sc_flags; TYPE_2__* sc_geom; int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_queue; } ;
struct g_consumer {TYPE_3__* provider; } ;
struct bio {int bio_cmd; TYPE_3__* bio_to; int /*<<< orphan*/  bio_done; int /*<<< orphan*/  bio_pflags; struct bio* bio_driver1; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  error; TYPE_1__* geom; } ;
struct TYPE_5__ {int /*<<< orphan*/  consumer; } ;
struct TYPE_4__ {struct g_eli_softc* softc; } ;

/* Variables and functions */
#define  BIO_DELETE 133 
#define  BIO_FLUSH 132 
#define  BIO_GETATTR 131 
#define  BIO_READ 130 
#define  BIO_WRITE 129 
#define  BIO_ZONE 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int G_ELI_FLAG_AUTH ; 
 int G_ELI_FLAG_NODELETE ; 
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  G_ELI_NEW_BIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct g_consumer* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bio*) ; 
 struct bio* FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_eli_softc*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_eli_getattr_done ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  g_std_done ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct g_eli_softc*) ; 

__attribute__((used)) static void
FUNC11(struct bio *bp)
{
	struct g_eli_softc *sc;
	struct g_consumer *cp;
	struct bio *cbp;

	sc = bp->bio_to->geom->softc;
	FUNC1(sc != NULL,
	    ("Provider's error should be set (error=%d)(device=%s).",
	    bp->bio_to->error, bp->bio_to->name));
	FUNC0(2, bp, "Request received.");

	switch (bp->bio_cmd) {
	case BIO_READ:
	case BIO_WRITE:
	case BIO_GETATTR:
	case BIO_FLUSH:
	case BIO_ZONE:
		break;
	case BIO_DELETE:
		/*
		 * If the user hasn't set the NODELETE flag, we just pass
		 * it down the stack and let the layers beneath us do (or
		 * not) whatever they do with it.  If they have, we
		 * reject it.  A possible extension would be an
		 * additional flag to take it as a hint to shred the data
		 * with [multiple?] overwrites.
		 */
		if (!(sc->sc_flags & G_ELI_FLAG_NODELETE))
			break;
	default:
		FUNC6(bp, EOPNOTSUPP);
		return;
	}
	cbp = FUNC4(bp);
	if (cbp == NULL) {
		FUNC6(bp, ENOMEM);
		return;
	}
	bp->bio_driver1 = cbp;
	bp->bio_pflags = G_ELI_NEW_BIO;
	switch (bp->bio_cmd) {
	case BIO_READ:
		if (!(sc->sc_flags & G_ELI_FLAG_AUTH)) {
			FUNC5(sc, bp, 0);
			break;
		}
		/* FALLTHROUGH */
	case BIO_WRITE:
		FUNC8(&sc->sc_queue_mtx);
		FUNC3(&sc->sc_queue, bp);
		FUNC9(&sc->sc_queue_mtx);
		FUNC10(sc);
		break;
	case BIO_GETATTR:
	case BIO_FLUSH:
	case BIO_DELETE:
	case BIO_ZONE:
		if (bp->bio_cmd == BIO_GETATTR)
			cbp->bio_done = g_eli_getattr_done;
		else
			cbp->bio_done = g_std_done;
		cp = FUNC2(&sc->sc_geom->consumer);
		cbp->bio_to = cp->provider;
		FUNC0(2, cbp, "Sending request.");
		FUNC7(cbp, cp);
		break;
	}
}