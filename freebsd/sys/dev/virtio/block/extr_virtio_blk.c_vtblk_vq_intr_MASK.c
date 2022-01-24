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
struct virtqueue {int dummy; } ;
struct bio_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio_queue*) ; 
 int VTBLK_FLAG_DETACH ; 
 int VTBLK_FLAG_SUSPEND ; 
 int /*<<< orphan*/  FUNC1 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtqueue*) ; 
 scalar_t__ FUNC4 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtblk_softc*,struct bio_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtblk_softc*,struct bio_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct virtqueue**) ; 

__attribute__((used)) static void
FUNC9(void *xsc)
{
	struct vtblk_softc *sc;
	struct virtqueue *vq;
	struct bio_queue queue;

	sc = xsc;
	vq = sc->vtblk_vq;
	FUNC0(&queue);

	FUNC1(sc);

again:
	if (sc->vtblk_flags & VTBLK_FLAG_DETACH)
		goto out;

	FUNC6(sc, &queue);
	FUNC7(sc);

	if (FUNC4(vq) != 0) {
		FUNC3(vq);
		goto again;
	}

	if (sc->vtblk_flags & VTBLK_FLAG_SUSPEND)
		FUNC8(&sc->vtblk_vq);

out:
	FUNC2(sc);
	FUNC5(sc, &queue);
}