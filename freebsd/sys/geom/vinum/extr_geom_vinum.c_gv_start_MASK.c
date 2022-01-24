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
struct gv_softc {int /*<<< orphan*/  bqueue_mtx; int /*<<< orphan*/  bqueue_down; } ;
struct g_geom {struct gv_softc* softc; } ;
struct bio {int bio_cmd; TYPE_1__* bio_to; } ;
struct TYPE_2__ {struct g_geom* geom; } ;

/* Variables and functions */
#define  BIO_DELETE 131 
#define  BIO_GETATTR 130 
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gv_softc*) ; 

void
FUNC5(struct bio *bp)
{
	struct g_geom *gp;
	struct gv_softc *sc;
	
	gp = bp->bio_to->geom;
	sc = gp->softc;

	switch (bp->bio_cmd) {
	case BIO_READ:
	case BIO_WRITE:
	case BIO_DELETE:
		break;
	case BIO_GETATTR:
	default:
		FUNC1(bp, EOPNOTSUPP);
		return;
	}
	FUNC2(&sc->bqueue_mtx);
	FUNC0(sc->bqueue_down, bp);
	FUNC4(sc);
	FUNC3(&sc->bqueue_mtx);
}