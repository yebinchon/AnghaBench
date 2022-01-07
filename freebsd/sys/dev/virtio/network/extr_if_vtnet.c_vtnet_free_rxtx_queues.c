
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_max_vq_pairs; int * vtnet_txqs; int * vtnet_rxqs; } ;


 int M_DEVBUF ;
 int free (int *,int ) ;
 int vtnet_destroy_rxq (int *) ;
 int vtnet_destroy_txq (int *) ;

__attribute__((used)) static void
vtnet_free_rxtx_queues(struct vtnet_softc *sc)
{
 int i;

 if (sc->vtnet_rxqs != ((void*)0)) {
  for (i = 0; i < sc->vtnet_max_vq_pairs; i++)
   vtnet_destroy_rxq(&sc->vtnet_rxqs[i]);
  free(sc->vtnet_rxqs, M_DEVBUF);
  sc->vtnet_rxqs = ((void*)0);
 }

 if (sc->vtnet_txqs != ((void*)0)) {
  for (i = 0; i < sc->vtnet_max_vq_pairs; i++)
   vtnet_destroy_txq(&sc->vtnet_txqs[i]);
  free(sc->vtnet_txqs, M_DEVBUF);
  sc->vtnet_txqs = ((void*)0);
 }
}
