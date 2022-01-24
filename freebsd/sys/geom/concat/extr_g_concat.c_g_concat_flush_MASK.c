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
typedef  size_t u_int ;
struct g_consumer {int /*<<< orphan*/  provider; } ;
struct g_concat_softc {size_t sc_ndisks; TYPE_1__* sc_disks; } ;
struct bio_queue_head {int dummy; } ;
struct bio {scalar_t__ bio_error; struct g_consumer* bio_caller1; int /*<<< orphan*/  bio_to; int /*<<< orphan*/  bio_done; } ;
struct TYPE_2__ {struct g_consumer* d_consumer; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_queue_head*,struct bio*) ; 
 struct bio* FUNC3 (struct bio_queue_head*) ; 
 struct bio* FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  g_concat_done ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,struct g_consumer*) ; 

__attribute__((used)) static void
FUNC8(struct g_concat_softc *sc, struct bio *bp)
{
	struct bio_queue_head queue;
	struct g_consumer *cp;
	struct bio *cbp;
	u_int no;

	FUNC1(&queue);
	for (no = 0; no < sc->sc_ndisks; no++) {
		cbp = FUNC4(bp);
		if (cbp == NULL) {
			while ((cbp = FUNC3(&queue)) != NULL)
				FUNC5(cbp);
			if (bp->bio_error == 0)
				bp->bio_error = ENOMEM;
			FUNC6(bp, bp->bio_error);
			return;
		}
		FUNC2(&queue, cbp);
		cbp->bio_done = g_concat_done;
		cbp->bio_caller1 = sc->sc_disks[no].d_consumer;
		cbp->bio_to = sc->sc_disks[no].d_consumer->provider;
	}
	while ((cbp = FUNC3(&queue)) != NULL) {
		FUNC0(cbp, "Sending request.");
		cp = cbp->bio_caller1;
		cbp->bio_caller1 = NULL;
		FUNC7(cbp, cp);
	}
}