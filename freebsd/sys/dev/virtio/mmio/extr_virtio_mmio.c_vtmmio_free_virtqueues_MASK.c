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
struct vtmmio_virtqueue {int /*<<< orphan*/ * vtv_vq; } ;
struct vtmmio_softc {int vtmmio_nvqs; struct vtmmio_virtqueue* vtmmio_vqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  VIRTIO_MMIO_QUEUE_PFN ; 
 int /*<<< orphan*/  FUNC0 (struct vtmmio_virtqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vtmmio_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vtmmio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct vtmmio_softc *sc)
{
	struct vtmmio_virtqueue *vqx;
	int idx;

	for (idx = 0; idx < sc->vtmmio_nvqs; idx++) {
		vqx = &sc->vtmmio_vqs[idx];

		FUNC2(sc, idx);
		FUNC3(sc, VIRTIO_MMIO_QUEUE_PFN, 0);

		FUNC1(vqx->vtv_vq);
		vqx->vtv_vq = NULL;
	}

	FUNC0(sc->vtmmio_vqs, M_DEVBUF);
	sc->vtmmio_vqs = NULL;
	sc->vtmmio_nvqs = 0;
}