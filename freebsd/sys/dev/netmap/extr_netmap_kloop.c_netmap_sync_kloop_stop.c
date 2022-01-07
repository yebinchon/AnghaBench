
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_priv_d {int np_kloop_state; int * np_si; struct netmap_adapter* np_na; int * np_nifp; } ;
struct netmap_adapter {int dummy; } ;


 int ENXIO ;
 int NMG_LOCK () ;
 int NMG_UNLOCK () ;
 int NM_ACCESS_ONCE (int ) ;
 int NM_SYNC_KLOOP_RUNNING ;
 int NM_SYNC_KLOOP_STOPPING ;
 size_t NR_RX ;
 int mb () ;
 int nm_netmap_on (struct netmap_adapter*) ;
 int nm_os_selwakeup (int ) ;
 int usleep_range (int,int) ;

int
netmap_sync_kloop_stop(struct netmap_priv_d *priv)
{
 struct netmap_adapter *na;
 bool running = 1;
 int err = 0;

 if (priv->np_nifp == ((void*)0)) {
  return ENXIO;
 }
 mb();

 na = priv->np_na;
 if (!nm_netmap_on(na)) {
  return ENXIO;
 }


 NMG_LOCK();
 priv->np_kloop_state |= NM_SYNC_KLOOP_STOPPING;
 NMG_UNLOCK();




 nm_os_selwakeup(priv->np_si[NR_RX]);


 while (running) {
  usleep_range(1000, 1500);
  NMG_LOCK();
  running = (NM_ACCESS_ONCE(priv->np_kloop_state)
    & NM_SYNC_KLOOP_RUNNING);
  NMG_UNLOCK();
 }

 return err;
}
