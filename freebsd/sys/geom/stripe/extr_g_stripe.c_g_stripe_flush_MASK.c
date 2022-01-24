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
typedef  size_t u_int ;
struct g_stripe_softc {size_t sc_ndisks; struct g_consumer** sc_disks; } ;
struct g_consumer {int /*<<< orphan*/  provider; } ;
struct bio_queue_head {int dummy; } ;
struct bio {scalar_t__ bio_error; struct g_consumer* bio_caller2; int /*<<< orphan*/  bio_to; int /*<<< orphan*/  bio_done; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,char*) ; 
 struct bio* FUNC1 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_queue_head*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_queue_head*,struct bio*) ; 
 struct bio* FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  g_stripe_done ; 

__attribute__((used)) static void
FUNC9(struct g_stripe_softc *sc, struct bio *bp)
{
	struct bio_queue_head queue;
	struct g_consumer *cp;
	struct bio *cbp;
	u_int no;

	FUNC2(&queue);
	for (no = 0; no < sc->sc_ndisks; no++) {
		cbp = FUNC5(bp);
		if (cbp == NULL) {
			for (cbp = FUNC1(&queue); cbp != NULL;
			    cbp = FUNC1(&queue)) {
				FUNC4(&queue, cbp);
				FUNC6(cbp);
			}
			if (bp->bio_error == 0)
				bp->bio_error = ENOMEM;
			FUNC7(bp, bp->bio_error);
			return;
		}
		FUNC3(&queue, cbp);
		cbp->bio_done = g_stripe_done;
		cbp->bio_caller2 = sc->sc_disks[no];
		cbp->bio_to = sc->sc_disks[no]->provider;
	}
	for (cbp = FUNC1(&queue); cbp != NULL; cbp = FUNC1(&queue)) {
		FUNC4(&queue, cbp);
		FUNC0(cbp, "Sending request.");
		cp = cbp->bio_caller2;
		cbp->bio_caller2 = NULL;
		FUNC8(cbp, cp);
	}
}