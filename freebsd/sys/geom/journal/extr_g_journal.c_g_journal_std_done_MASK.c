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
struct g_journal_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_back_queue; } ;
struct bio {TYPE_2__* bio_from; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_journal_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct g_journal_softc*) ; 

__attribute__((used)) static void
FUNC4(struct bio *bp)
{
	struct g_journal_softc *sc;

	sc = bp->bio_from->geom->softc;
	FUNC1(&sc->sc_mtx);
	FUNC0(&sc->sc_back_queue, bp);
	FUNC3(sc);
	FUNC2(&sc->sc_mtx);
}