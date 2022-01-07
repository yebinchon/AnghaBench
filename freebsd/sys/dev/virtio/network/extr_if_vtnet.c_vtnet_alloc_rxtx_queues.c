
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int dummy; } ;
struct vtnet_softc {int vtnet_max_vq_pairs; int * vtnet_txqs; int * vtnet_rxqs; } ;
struct vtnet_rxq {int dummy; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 void* malloc (int,int ,int) ;
 int vtnet_init_rxq (struct vtnet_softc*,int) ;
 int vtnet_init_txq (struct vtnet_softc*,int) ;
 int vtnet_setup_queue_sysctl (struct vtnet_softc*) ;

__attribute__((used)) static int
vtnet_alloc_rxtx_queues(struct vtnet_softc *sc)
{
 int i, npairs, error;

 npairs = sc->vtnet_max_vq_pairs;

 sc->vtnet_rxqs = malloc(sizeof(struct vtnet_rxq) * npairs, M_DEVBUF,
     M_NOWAIT | M_ZERO);
 sc->vtnet_txqs = malloc(sizeof(struct vtnet_txq) * npairs, M_DEVBUF,
     M_NOWAIT | M_ZERO);
 if (sc->vtnet_rxqs == ((void*)0) || sc->vtnet_txqs == ((void*)0))
  return (ENOMEM);

 for (i = 0; i < npairs; i++) {
  error = vtnet_init_rxq(sc, i);
  if (error)
   return (error);
  error = vtnet_init_txq(sc, i);
  if (error)
   return (error);
 }

 vtnet_setup_queue_sysctl(sc);

 return (0);
}
