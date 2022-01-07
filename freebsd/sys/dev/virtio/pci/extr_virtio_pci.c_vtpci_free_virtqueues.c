
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_virtqueue {int * vtv_vq; } ;
struct vtpci_softc {int vtpci_nvqs; struct vtpci_virtqueue* vtpci_vqs; } ;


 int M_DEVBUF ;
 int VIRTIO_PCI_QUEUE_PFN ;
 int free (struct vtpci_virtqueue*,int ) ;
 int virtqueue_free (int *) ;
 int vtpci_select_virtqueue (struct vtpci_softc*,int) ;
 int vtpci_write_config_4 (struct vtpci_softc*,int ,int ) ;

__attribute__((used)) static void
vtpci_free_virtqueues(struct vtpci_softc *sc)
{
 struct vtpci_virtqueue *vqx;
 int idx;

 for (idx = 0; idx < sc->vtpci_nvqs; idx++) {
  vqx = &sc->vtpci_vqs[idx];

  vtpci_select_virtqueue(sc, idx);
  vtpci_write_config_4(sc, VIRTIO_PCI_QUEUE_PFN, 0);

  virtqueue_free(vqx->vtv_vq);
  vqx->vtv_vq = ((void*)0);
 }

 free(sc->vtpci_vqs, M_DEVBUF);
 sc->vtpci_vqs = ((void*)0);
 sc->vtpci_nvqs = 0;
}
