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
typedef  int uint32_t ;
struct vtmmio_virtqueue {scalar_t__ vtv_no_intr; struct virtqueue* vtv_vq; } ;
struct vtmmio_softc {int vtmmio_nvqs; struct vtmmio_virtqueue* vtmmio_vqs; int /*<<< orphan*/ * vtmmio_child_dev; } ;
struct virtqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VIRTIO_MMIO_INTERRUPT_ACK ; 
 int /*<<< orphan*/  VIRTIO_MMIO_INTERRUPT_STATUS ; 
 int VIRTIO_MMIO_INT_CONFIG ; 
 int VIRTIO_MMIO_INT_VRING ; 
 int /*<<< orphan*/  FUNC1 (struct virtqueue*) ; 
 int FUNC2 (struct vtmmio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vtmmio_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct vtmmio_virtqueue *vqx;
	struct vtmmio_softc *sc;
	struct virtqueue *vq;
	uint32_t status;
	int idx;

	sc = arg;

	status = FUNC2(sc, VIRTIO_MMIO_INTERRUPT_STATUS);
	FUNC3(sc, VIRTIO_MMIO_INTERRUPT_ACK, status);

	/* The config changed */
	if (status & VIRTIO_MMIO_INT_CONFIG)
		if (sc->vtmmio_child_dev != NULL)
			FUNC0(sc->vtmmio_child_dev);

	/* Notify all virtqueues. */
	if (status & VIRTIO_MMIO_INT_VRING) {
		for (idx = 0; idx < sc->vtmmio_nvqs; idx++) {
			vqx = &sc->vtmmio_vqs[idx];
			if (vqx->vtv_no_intr == 0) {
				vq = vqx->vtv_vq;
				FUNC1(vq);
			}
		}
	}
}