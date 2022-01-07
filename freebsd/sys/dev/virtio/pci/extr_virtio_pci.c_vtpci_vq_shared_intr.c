
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_virtqueue {scalar_t__ vtv_no_intr; int vtv_vq; } ;
struct vtpci_softc {int vtpci_nvqs; struct vtpci_virtqueue* vtpci_vqs; } ;


 int virtqueue_intr (int ) ;

__attribute__((used)) static void
vtpci_vq_shared_intr(void *xsc)
{
 struct vtpci_softc *sc;
 struct vtpci_virtqueue *vqx;
 int i;

 sc = xsc;
 vqx = &sc->vtpci_vqs[0];

 for (i = 0; i < sc->vtpci_nvqs; i++, vqx++) {
  if (vqx->vtv_no_intr == 0)
   virtqueue_intr(vqx->vtv_vq);
 }
}
