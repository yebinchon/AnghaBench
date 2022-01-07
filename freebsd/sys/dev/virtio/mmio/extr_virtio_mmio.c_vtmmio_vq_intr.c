
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vtmmio_virtqueue {scalar_t__ vtv_no_intr; struct virtqueue* vtv_vq; } ;
struct vtmmio_softc {int vtmmio_nvqs; struct vtmmio_virtqueue* vtmmio_vqs; int * vtmmio_child_dev; } ;
struct virtqueue {int dummy; } ;


 int VIRTIO_CONFIG_CHANGE (int *) ;
 int VIRTIO_MMIO_INTERRUPT_ACK ;
 int VIRTIO_MMIO_INTERRUPT_STATUS ;
 int VIRTIO_MMIO_INT_CONFIG ;
 int VIRTIO_MMIO_INT_VRING ;
 int virtqueue_intr (struct virtqueue*) ;
 int vtmmio_read_config_4 (struct vtmmio_softc*,int ) ;
 int vtmmio_write_config_4 (struct vtmmio_softc*,int ,int) ;

__attribute__((used)) static void
vtmmio_vq_intr(void *arg)
{
 struct vtmmio_virtqueue *vqx;
 struct vtmmio_softc *sc;
 struct virtqueue *vq;
 uint32_t status;
 int idx;

 sc = arg;

 status = vtmmio_read_config_4(sc, VIRTIO_MMIO_INTERRUPT_STATUS);
 vtmmio_write_config_4(sc, VIRTIO_MMIO_INTERRUPT_ACK, status);


 if (status & VIRTIO_MMIO_INT_CONFIG)
  if (sc->vtmmio_child_dev != ((void*)0))
   VIRTIO_CONFIG_CHANGE(sc->vtmmio_child_dev);


 if (status & VIRTIO_MMIO_INT_VRING) {
  for (idx = 0; idx < sc->vtmmio_nvqs; idx++) {
   vqx = &sc->vtmmio_vqs[idx];
   if (vqx->vtv_no_intr == 0) {
    vq = vqx->vtv_vq;
    virtqueue_intr(vq);
   }
  }
 }
}
