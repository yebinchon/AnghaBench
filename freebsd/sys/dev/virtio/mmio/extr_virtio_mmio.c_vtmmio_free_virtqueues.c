
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_virtqueue {int * vtv_vq; } ;
struct vtmmio_softc {int vtmmio_nvqs; struct vtmmio_virtqueue* vtmmio_vqs; } ;


 int M_DEVBUF ;
 int VIRTIO_MMIO_QUEUE_PFN ;
 int free (struct vtmmio_virtqueue*,int ) ;
 int virtqueue_free (int *) ;
 int vtmmio_select_virtqueue (struct vtmmio_softc*,int) ;
 int vtmmio_write_config_4 (struct vtmmio_softc*,int ,int ) ;

__attribute__((used)) static void
vtmmio_free_virtqueues(struct vtmmio_softc *sc)
{
 struct vtmmio_virtqueue *vqx;
 int idx;

 for (idx = 0; idx < sc->vtmmio_nvqs; idx++) {
  vqx = &sc->vtmmio_vqs[idx];

  vtmmio_select_virtqueue(sc, idx);
  vtmmio_write_config_4(sc, VIRTIO_MMIO_QUEUE_PFN, 0);

  virtqueue_free(vqx->vtv_vq);
  vqx->vtv_vq = ((void*)0);
 }

 free(sc->vtmmio_vqs, M_DEVBUF);
 sc->vtmmio_vqs = ((void*)0);
 sc->vtmmio_nvqs = 0;
}
