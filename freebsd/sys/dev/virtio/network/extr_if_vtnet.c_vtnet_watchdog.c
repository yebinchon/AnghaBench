
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vtnet_txq {int vtntx_watchdog; int vtntx_id; TYPE_1__* vtntx_sc; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {struct ifnet* vtnet_ifp; } ;


 int VTNET_TXQ_LOCK (struct vtnet_txq*) ;
 int VTNET_TXQ_UNLOCK (struct vtnet_txq*) ;
 int if_printf (struct ifnet*,char*,int ) ;
 scalar_t__ vtnet_txq_eof (struct vtnet_txq*) ;
 int vtnet_txq_start (struct vtnet_txq*) ;

__attribute__((used)) static int
vtnet_watchdog(struct vtnet_txq *txq)
{
 struct ifnet *ifp;

 ifp = txq->vtntx_sc->vtnet_ifp;

 VTNET_TXQ_LOCK(txq);
 if (txq->vtntx_watchdog == 1) {
  if (vtnet_txq_eof(txq) != 0)
   vtnet_txq_start(txq);
 }

 if (txq->vtntx_watchdog == 0 || --txq->vtntx_watchdog) {
  VTNET_TXQ_UNLOCK(txq);
  return (0);
 }
 VTNET_TXQ_UNLOCK(txq);

 if_printf(ifp, "watchdog timeout on queue %d\n", txq->vtntx_id);
 return (1);
}
