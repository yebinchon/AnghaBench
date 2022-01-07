
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_virtqueue {scalar_t__ vtv_no_intr; int vtv_vq; } ;
struct vtpci_softc {int vtpci_nvqs; struct vtpci_virtqueue* vtpci_vqs; } ;


 int FILTER_SCHEDULE_THREAD ;
 int FILTER_STRAY ;
 int virtqueue_intr_filter (int ) ;

__attribute__((used)) static int
vtpci_vq_shared_intr_filter(void *xsc)
{
 struct vtpci_softc *sc;
 struct vtpci_virtqueue *vqx;
 int i, rc;

 rc = 0;
 sc = xsc;
 vqx = &sc->vtpci_vqs[0];

 for (i = 0; i < sc->vtpci_nvqs; i++, vqx++) {
  if (vqx->vtv_no_intr == 0)
   rc |= virtqueue_intr_filter(vqx->vtv_vq);
 }

 return (rc ? FILTER_SCHEDULE_THREAD : FILTER_STRAY);
}
