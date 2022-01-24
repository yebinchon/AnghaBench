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
struct bio_queue_head {int dummy; } ;
struct vtblk_softc {int /*<<< orphan*/ * vtblk_vq; struct bio_queue_head vtblk_bioq; } ;
struct vtblk_request {struct bio* vbr_bp; } ;
struct bio_queue {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio_queue*) ; 
 int /*<<< orphan*/ * FUNC1 (struct bio_queue_head*) ; 
 struct bio* FUNC2 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtblk_softc*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vtblk_softc*,struct bio_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtblk_softc*,struct bio_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct vtblk_softc*,struct vtblk_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct vtblk_softc*) ; 
 struct vtblk_request* FUNC9 (struct vtblk_softc*) ; 

__attribute__((used)) static void
FUNC10(struct vtblk_softc *sc)
{
	struct bio_queue queue;
	struct bio_queue_head *bioq;
	struct vtblk_request *req;
	struct bio *bp;

	bioq = &sc->vtblk_bioq;
	FUNC0(&queue);

	if (sc->vtblk_vq != NULL) {
		FUNC6(sc, &queue);
		FUNC4(sc, &queue);

		FUNC5(sc);
	}

	while ((req = FUNC9(sc)) != NULL) {
		FUNC3(sc, req->vbr_bp, ENXIO);
		FUNC7(sc, req);
	}

	while (FUNC1(bioq) != NULL) {
		bp = FUNC2(bioq);
		FUNC3(sc, bp, ENXIO);
	}

	FUNC8(sc);
}