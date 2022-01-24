#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vqueue_info {int vq_save_used; TYPE_2__* vq_avail; TYPE_1__* vq_used; } ;
struct beri_vtblk_softc {int /*<<< orphan*/  pio_send; struct vqueue_info* vs_queues; int /*<<< orphan*/  opened; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  Q_INTR ; 
 int FUNC2 (struct beri_vtblk_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIRTIO_MMIO_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  VIRTIO_MMIO_INT_VRING ; 
 int /*<<< orphan*/  VIRTIO_MMIO_QUEUE_NOTIFY ; 
 int VRING_AVAIL_F_NO_INTERRUPT ; 
 int /*<<< orphan*/  FUNC3 (struct beri_vtblk_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vqueue_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct vqueue_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct beri_vtblk_softc*,struct vqueue_info*) ; 

__attribute__((used)) static int
FUNC9(struct beri_vtblk_softc *sc)
{
	struct vqueue_info *vq;
	int queue;
	int reg;

	vq = &sc->vs_queues[0];
	if (!FUNC7(vq))
		return (0);

	if (!sc->opened)
		return (0);

	reg = FUNC2(sc, VIRTIO_MMIO_QUEUE_NOTIFY);
	queue = FUNC4(reg);

	FUNC0(queue == 0, ("we support single queue only"));

	/* Process new descriptors */
	vq = &sc->vs_queues[queue];
	vq->vq_save_used = FUNC4(vq->vq_used->idx);
	while (FUNC6(vq))
		FUNC8(sc, vq);

	/* Interrupt the other side */
	if ((FUNC4(vq->vq_avail->flags) & VRING_AVAIL_F_NO_INTERRUPT) == 0) {
		reg = FUNC5(VIRTIO_MMIO_INT_VRING);
		FUNC3(sc, VIRTIO_MMIO_INTERRUPT_STATUS, reg);
		FUNC1(sc->pio_send, Q_INTR, 1);
	}

	return (0);
}