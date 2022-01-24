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
struct vtblk_softc {struct vtblk_request* vtblk_req_ordered; int /*<<< orphan*/  vtblk_vq; } ;
struct vtblk_request {struct bio* vbr_bp; } ;
struct bio_queue {int dummy; } ;
struct bio {int /*<<< orphan*/  bio_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_queue*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_queue ; 
 struct vtblk_request* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vtblk_softc*,struct vtblk_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtblk_request*) ; 

__attribute__((used)) static void
FUNC5(struct vtblk_softc *sc, struct bio_queue *queue)
{
	struct vtblk_request *req;
	struct bio *bp;

	while ((req = FUNC2(sc->vtblk_vq, NULL)) != NULL) {
		if (sc->vtblk_req_ordered != NULL) {
			FUNC0(sc->vtblk_req_ordered == req);
			sc->vtblk_req_ordered = NULL;
		}

		bp = req->vbr_bp;
		bp->bio_error = FUNC4(req);
		FUNC1(queue, bp, bio_queue);

		FUNC3(sc, req);
	}
}