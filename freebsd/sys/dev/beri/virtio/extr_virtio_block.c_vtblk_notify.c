
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vqueue_info {int vq_save_used; TYPE_2__* vq_avail; TYPE_1__* vq_used; } ;
struct beri_vtblk_softc {int pio_send; struct vqueue_info* vs_queues; int opened; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int idx; } ;


 int KASSERT (int,char*) ;
 int PIO_SET (int ,int ,int) ;
 int Q_INTR ;
 int READ2 (struct beri_vtblk_softc*,int ) ;
 int VIRTIO_MMIO_INTERRUPT_STATUS ;
 int VIRTIO_MMIO_INT_VRING ;
 int VIRTIO_MMIO_QUEUE_NOTIFY ;
 int VRING_AVAIL_F_NO_INTERRUPT ;
 int WRITE4 (struct beri_vtblk_softc*,int ,int) ;
 int be16toh (int) ;
 int htobe32 (int ) ;
 scalar_t__ vq_has_descs (struct vqueue_info*) ;
 int vq_ring_ready (struct vqueue_info*) ;
 int vtblk_proc (struct beri_vtblk_softc*,struct vqueue_info*) ;

__attribute__((used)) static int
vtblk_notify(struct beri_vtblk_softc *sc)
{
 struct vqueue_info *vq;
 int queue;
 int reg;

 vq = &sc->vs_queues[0];
 if (!vq_ring_ready(vq))
  return (0);

 if (!sc->opened)
  return (0);

 reg = READ2(sc, VIRTIO_MMIO_QUEUE_NOTIFY);
 queue = be16toh(reg);

 KASSERT(queue == 0, ("we support single queue only"));


 vq = &sc->vs_queues[queue];
 vq->vq_save_used = be16toh(vq->vq_used->idx);
 while (vq_has_descs(vq))
  vtblk_proc(sc, vq);


 if ((be16toh(vq->vq_avail->flags) & VRING_AVAIL_F_NO_INTERRUPT) == 0) {
  reg = htobe32(VIRTIO_MMIO_INT_VRING);
  WRITE4(sc, VIRTIO_MMIO_INTERRUPT_STATUS, reg);
  PIO_SET(sc->pio_send, Q_INTR, 1);
 }

 return (0);
}
