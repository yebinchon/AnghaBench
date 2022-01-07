
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int vtntx_br; struct vtnet_softc* vtntx_sc; } ;
struct vtnet_softc {struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_snd; } ;


 int IFQ_DRV_IS_EMPTY (int *) ;
 int drbr_empty (struct ifnet*,int ) ;
 int vtnet_start_locked (struct vtnet_txq*,struct ifnet*) ;
 int vtnet_txq_mq_start_locked (struct vtnet_txq*,int *) ;

__attribute__((used)) static void
vtnet_txq_start(struct vtnet_txq *txq)
{
 struct vtnet_softc *sc;
 struct ifnet *ifp;

 sc = txq->vtntx_sc;
 ifp = sc->vtnet_ifp;





 if (!drbr_empty(ifp, txq->vtntx_br))
  vtnet_txq_mq_start_locked(txq, ((void*)0));

}
