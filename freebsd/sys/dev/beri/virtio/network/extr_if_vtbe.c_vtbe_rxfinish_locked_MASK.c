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
struct vtbe_softc {int /*<<< orphan*/  pio_send; struct vqueue_info* vs_queues; } ;
struct vqueue_info {TYPE_1__* vq_used; int /*<<< orphan*/  vq_save_used; } ;
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  Q_INTR ; 
 int /*<<< orphan*/  VIRTIO_MMIO_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  VIRTIO_MMIO_INT_VRING ; 
 int /*<<< orphan*/  FUNC1 (struct vtbe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct vqueue_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct vqueue_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtbe_softc*,struct vqueue_info*) ; 

__attribute__((used)) static void
FUNC7(struct vtbe_softc *sc)
{
	struct vqueue_info *vq;
	int reg;

	/* TX queue */
	vq = &sc->vs_queues[1];
	if (!FUNC5(vq))
		return;

	/* Process new descriptors */
	vq->vq_save_used = FUNC2(vq->vq_used->idx);

	while (FUNC4(vq)) {
		FUNC6(sc, vq);
	}

	/* Interrupt the other side */
	reg = FUNC3(VIRTIO_MMIO_INT_VRING);
	FUNC1(sc, VIRTIO_MMIO_INTERRUPT_STATUS, reg);

	FUNC0(sc->pio_send, Q_INTR, 1);
}