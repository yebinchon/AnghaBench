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
struct vtblk_softc {int vtblk_flags; struct virtqueue* vtblk_vq; } ;
struct vtblk_request {int dummy; } ;
struct virtqueue {int dummy; } ;

/* Variables and functions */
 int VTBLK_FLAG_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtqueue*) ; 
 scalar_t__ FUNC3 (struct vtblk_softc*,struct vtblk_request*) ; 
 struct vtblk_request* FUNC4 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtblk_softc*,struct vtblk_request*) ; 

__attribute__((used)) static void
FUNC6(struct vtblk_softc *sc)
{
	struct virtqueue *vq;
	struct vtblk_request *req;
	int enq;

	FUNC0(sc);
	vq = sc->vtblk_vq;
	enq = 0;

	if (sc->vtblk_flags & VTBLK_FLAG_SUSPEND)
		return;

	while (!FUNC1(vq)) {
		req = FUNC4(sc);
		if (req == NULL)
			break;

		if (FUNC3(sc, req) != 0) {
			FUNC5(sc, req);
			break;
		}

		enq++;
	}

	if (enq > 0)
		FUNC2(vq);
}