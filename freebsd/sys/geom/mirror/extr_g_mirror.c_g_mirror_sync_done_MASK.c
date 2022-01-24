#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct g_mirror_softc {int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_queue; } ;
struct bio {int /*<<< orphan*/  bio_cflags; TYPE_2__* bio_from; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_mirror_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_MIRROR_BIO_FLAG_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_queue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct g_mirror_softc*) ; 

__attribute__((used)) static void
FUNC5(struct bio *bp)
{
	struct g_mirror_softc *sc;

	FUNC0(3, bp, "Synchronization request delivered.");
	sc = bp->bio_from->geom->softc;
	bp->bio_cflags = G_MIRROR_BIO_FLAG_SYNC;
	FUNC2(&sc->sc_queue_mtx);
	FUNC1(&sc->sc_queue, bp, bio_queue);
	FUNC3(&sc->sc_queue_mtx);
	FUNC4(sc);
}