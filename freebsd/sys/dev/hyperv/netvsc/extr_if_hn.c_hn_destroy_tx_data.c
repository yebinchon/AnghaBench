
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int hn_flags; int hn_tx_ring_cnt; scalar_t__ hn_tx_ring_inuse; int * hn_tx_ring; int * hn_chim; int hn_dev; int hn_chim_dma; } ;


 int HN_FLAG_CHIM_REF ;
 int M_DEVBUF ;
 int device_printf (int ,char*) ;
 int free (int *,int ) ;
 int hn_tx_ring_destroy (int *) ;
 int hyperv_dmamem_free (int *,int *) ;

__attribute__((used)) static void
hn_destroy_tx_data(struct hn_softc *sc)
{
 int i;

 if (sc->hn_chim != ((void*)0)) {
  if ((sc->hn_flags & HN_FLAG_CHIM_REF) == 0) {
   hyperv_dmamem_free(&sc->hn_chim_dma, sc->hn_chim);
  } else {
   device_printf(sc->hn_dev,
       "chimney sending buffer is referenced");
  }
  sc->hn_chim = ((void*)0);
 }

 if (sc->hn_tx_ring_cnt == 0)
  return;

 for (i = 0; i < sc->hn_tx_ring_cnt; ++i)
  hn_tx_ring_destroy(&sc->hn_tx_ring[i]);

 free(sc->hn_tx_ring, M_DEVBUF);
 sc->hn_tx_ring = ((void*)0);

 sc->hn_tx_ring_cnt = 0;
 sc->hn_tx_ring_inuse = 0;
}
