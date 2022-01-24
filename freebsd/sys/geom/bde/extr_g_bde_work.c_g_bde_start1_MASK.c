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
struct g_bde_work {scalar_t__ length; scalar_t__ data; scalar_t__ offset; struct bio* bp; } ;
struct g_bde_softc {int /*<<< orphan*/  worklist_mutex; } ;
struct bio {scalar_t__ bio_length; scalar_t__ bio_offset; scalar_t__ bio_data; scalar_t__ bio_error; struct g_bde_softc* bio_driver1; TYPE_2__* bio_to; } ;
typedef  scalar_t__ off_t ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_bde_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct g_bde_work*) ; 
 struct g_bde_work* FUNC2 (struct g_bde_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_bde_work*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct bio *bp)
{
	struct g_bde_softc *sc;
	struct g_bde_work *wp;
	off_t done;

	sc = bp->bio_to->geom->softc;
	bp->bio_driver1 = sc;

	FUNC4(&sc->worklist_mutex);
	for(done = 0; done < bp->bio_length; ) {
		wp = FUNC2(sc);
		if (wp != NULL) {
			wp->bp = bp;
			wp->offset = bp->bio_offset + done;
			wp->data = bp->bio_data + done;
			wp->length = bp->bio_length - done;
			FUNC1(wp);
			done += wp->length;
			FUNC3(wp);
		}
		if (wp == NULL || bp->bio_error != 0) {
			FUNC0(bp, bp->bio_length - done, ENOMEM);
			break;
		}
	}
	FUNC5(&sc->worklist_mutex);
	return;
}