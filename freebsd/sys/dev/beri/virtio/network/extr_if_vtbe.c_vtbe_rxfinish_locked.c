
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vtbe_softc {int pio_send; struct vqueue_info* vs_queues; } ;
struct vqueue_info {TYPE_1__* vq_used; int vq_save_used; } ;
struct TYPE_2__ {int idx; } ;


 int PIO_SET (int ,int ,int) ;
 int Q_INTR ;
 int VIRTIO_MMIO_INTERRUPT_STATUS ;
 int VIRTIO_MMIO_INT_VRING ;
 int WRITE4 (struct vtbe_softc*,int ,int) ;
 int be16toh (int ) ;
 int htobe32 (int ) ;
 scalar_t__ vq_has_descs (struct vqueue_info*) ;
 int vq_ring_ready (struct vqueue_info*) ;
 int vtbe_proc_rx (struct vtbe_softc*,struct vqueue_info*) ;

__attribute__((used)) static void
vtbe_rxfinish_locked(struct vtbe_softc *sc)
{
 struct vqueue_info *vq;
 int reg;


 vq = &sc->vs_queues[1];
 if (!vq_ring_ready(vq))
  return;


 vq->vq_save_used = be16toh(vq->vq_used->idx);

 while (vq_has_descs(vq)) {
  vtbe_proc_rx(sc, vq);
 }


 reg = htobe32(VIRTIO_MMIO_INT_VRING);
 WRITE4(sc, VIRTIO_MMIO_INTERRUPT_STATUS, reg);

 PIO_SET(sc->pio_send, Q_INTR, 1);
}
