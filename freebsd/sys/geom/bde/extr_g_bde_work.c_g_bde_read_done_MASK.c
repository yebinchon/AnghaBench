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
struct g_bde_softc {int /*<<< orphan*/  worklist_mutex; } ;
struct g_bde_sector {scalar_t__ size; scalar_t__ error; int /*<<< orphan*/  state; } ;
struct bio {scalar_t__ bio_error; scalar_t__ bio_completed; struct g_bde_softc* bio_caller2; struct g_bde_sector* bio_caller1; } ;

/* Variables and functions */
 scalar_t__ EIO ; 
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  JUNK ; 
 int /*<<< orphan*/  VALID ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct g_bde_sector*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct g_bde_softc*) ; 

__attribute__((used)) static void
FUNC5(struct bio *bp)
{
	struct g_bde_sector *sp;
	struct g_bde_softc *sc;

	sp = bp->bio_caller1;
	FUNC1(G_T_TOPOLOGY, "g_bde_read_done(%p)", sp);
	sc = bp->bio_caller2;
	FUNC2(&sc->worklist_mutex);
	if (bp->bio_error == 0 && bp->bio_completed != sp->size)
		bp->bio_error = EIO;
	sp->error = bp->bio_error;
	if (sp->error == 0)
		sp->state = VALID;
	else
		sp->state = JUNK;
	FUNC4(sc);
	FUNC0(bp);
	FUNC3(&sc->worklist_mutex);
}