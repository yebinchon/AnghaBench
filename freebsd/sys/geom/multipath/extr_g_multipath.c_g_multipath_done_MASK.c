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
struct g_multipath_softc {int /*<<< orphan*/  sc_mtx; } ;
struct g_consumer {int index; int /*<<< orphan*/  private; TYPE_1__* geom; } ;
struct bio {scalar_t__ bio_error; struct g_consumer* bio_from; } ;
struct TYPE_2__ {struct g_multipath_softc* softc; } ;

/* Variables and functions */
 scalar_t__ EIO ; 
 scalar_t__ ENXIO ; 
 int MP_LOST ; 
 int MP_POSTED ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  g_mpd ; 
 int /*<<< orphan*/  g_multipath_kt_state ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct g_consumer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  gmtbq ; 
 int /*<<< orphan*/  gmtbq_mtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct bio *bp)
{
	struct g_multipath_softc *sc;
	struct g_consumer *cp;
	uintptr_t *cnt;

	if (bp->bio_error == ENXIO || bp->bio_error == EIO) {
		FUNC3(&gmtbq_mtx);
		FUNC0(&gmtbq, bp);
		FUNC4(&gmtbq_mtx);
		FUNC5(&g_multipath_kt_state);
	} else {
		cp = bp->bio_from;
		sc = cp->geom->softc;
		cnt = (uintptr_t *)&cp->private;
		FUNC3(&sc->sc_mtx);
		(*cnt)--;
		if (*cnt == 0 && (cp->index & MP_LOST)) {
			if (FUNC1(g_mpd, cp, M_NOWAIT, NULL) == 0)
				cp->index |= MP_POSTED;
			FUNC4(&sc->sc_mtx);
		} else
			FUNC4(&sc->sc_mtx);
		FUNC2(bp);
	}
}