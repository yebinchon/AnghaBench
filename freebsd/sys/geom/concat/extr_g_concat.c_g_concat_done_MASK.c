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
struct g_concat_softc {int /*<<< orphan*/  sc_lock; } ;
struct bio {scalar_t__ bio_error; scalar_t__ bio_inbed; scalar_t__ bio_children; scalar_t__ bio_completed; TYPE_2__* bio_to; struct bio* bio_parent; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_concat_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bio *bp)
{
	struct g_concat_softc *sc;
	struct bio *pbp;

	pbp = bp->bio_parent;
	sc = pbp->bio_to->geom->softc;
	FUNC2(&sc->sc_lock);
	if (pbp->bio_error == 0)
		pbp->bio_error = bp->bio_error;
	pbp->bio_completed += bp->bio_completed;
	pbp->bio_inbed++;
	if (pbp->bio_children == pbp->bio_inbed) {
		FUNC3(&sc->sc_lock);
		FUNC1(pbp, pbp->bio_error);
	} else
		FUNC3(&sc->sc_lock);
	FUNC0(bp);
}