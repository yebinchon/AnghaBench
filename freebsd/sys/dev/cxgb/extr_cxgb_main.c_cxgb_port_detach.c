
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_txq {int txq_timer; int txq_watchdog; } ;
struct sge_qset {struct sge_txq* txq; } ;
struct port_info {int first_qset; int nqsets; int * ifp; int * port_cdev; struct adapter* adapter; } ;
struct TYPE_2__ {struct sge_qset* qs; } ;
struct adapter {int flags; TYPE_1__ sge; int lock; } ;
typedef int device_t ;


 int ADAPTER_LOCK (struct adapter*) ;
 int ADAPTER_UNLOCK (struct adapter*) ;
 int CLR_BUSY (struct adapter*) ;
 scalar_t__ IS_BUSY (struct adapter*) ;
 int PORT_LOCK_DEINIT (struct port_info*) ;
 int SET_BUSY (struct adapter*) ;
 int SET_DOOMED (struct port_info*) ;
 size_t TXQ_ETH ;
 int callout_drain (int *) ;
 int cxgb_uninit_synchronized (struct port_info*) ;
 int destroy_dev (int *) ;
 struct port_info* device_get_softc (int ) ;
 int ether_ifdetach (int *) ;
 int if_free (int *) ;
 int mtx_sleep (int *,int *,int ,char*,int ) ;
 int wakeup (int *) ;
 int wakeup_one (int *) ;

__attribute__((used)) static int
cxgb_port_detach(device_t dev)
{
 struct port_info *p;
 struct adapter *sc;
 int i;

 p = device_get_softc(dev);
 sc = p->adapter;


 ADAPTER_LOCK(sc);
 SET_DOOMED(p);
 wakeup(&sc->flags);
 while (IS_BUSY(sc))
  mtx_sleep(&sc->flags, &sc->lock, 0, "cxgbdtch", 0);
 SET_BUSY(sc);
 ADAPTER_UNLOCK(sc);

 if (p->port_cdev != ((void*)0))
  destroy_dev(p->port_cdev);

 cxgb_uninit_synchronized(p);
 ether_ifdetach(p->ifp);

 for (i = p->first_qset; i < p->first_qset + p->nqsets; i++) {
  struct sge_qset *qs = &sc->sge.qs[i];
  struct sge_txq *txq = &qs->txq[TXQ_ETH];

  callout_drain(&txq->txq_watchdog);
  callout_drain(&txq->txq_timer);
 }

 PORT_LOCK_DEINIT(p);
 if_free(p->ifp);
 p->ifp = ((void*)0);

 ADAPTER_LOCK(sc);
 CLR_BUSY(sc);
 wakeup_one(&sc->flags);
 ADAPTER_UNLOCK(sc);
 return (0);
}
