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
struct vtblk_softc {int /*<<< orphan*/ * vtblk_req_ordered; struct virtqueue* vtblk_vq; } ;
struct vtblk_request {int /*<<< orphan*/  vbr_bp; } ;
struct virtqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct vtblk_request* FUNC1 (struct virtqueue*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtblk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vtblk_softc*,struct vtblk_request*) ; 

__attribute__((used)) static void
FUNC5(struct vtblk_softc *sc)
{
	struct virtqueue *vq;
	struct vtblk_request *req;
	int last;

	vq = sc->vtblk_vq;
	last = 0;

	while ((req = FUNC1(vq, &last)) != NULL) {
		FUNC3(sc, req->vbr_bp, ENXIO);
		FUNC4(sc, req);
	}

	sc->vtblk_req_ordered = NULL;
	FUNC0(FUNC2(vq), ("virtqueue not empty"));
}