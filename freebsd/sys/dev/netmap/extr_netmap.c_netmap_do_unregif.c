
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_priv_d {int * np_nifp; struct netmap_adapter* np_na; } ;
struct netmap_adapter {scalar_t__ active_fds; int na_flags; int num_host_tx_rings; int num_host_rx_rings; int (* nm_krings_delete ) (struct netmap_adapter*) ;int name; int (* nm_register ) (struct netmap_adapter*,int ) ;} ;


 int NAF_HOST_RINGS ;
 int NMG_LOCK_ASSERT () ;
 int NM_DEBUG_ON ;
 int netmap_debug ;
 int netmap_krings_put (struct netmap_priv_d*) ;
 int netmap_mem_drop (struct netmap_adapter*) ;
 int netmap_mem_if_delete (struct netmap_adapter*,int *) ;
 int netmap_mem_rings_delete (struct netmap_adapter*) ;
 int netmap_monitor_stop (struct netmap_adapter*) ;
 int netmap_unset_ringid (struct netmap_priv_d*) ;
 scalar_t__ nm_kring_pending (struct netmap_priv_d*) ;
 scalar_t__ nm_netmap_on (struct netmap_adapter*) ;
 int nm_prerr (char*) ;
 int nm_prinf (char*,int ) ;
 int stub1 (struct netmap_adapter*,int ) ;
 int stub2 (struct netmap_adapter*) ;

void
netmap_do_unregif(struct netmap_priv_d *priv)
{
 struct netmap_adapter *na = priv->np_na;

 NMG_LOCK_ASSERT();
 na->active_fds--;

 netmap_krings_put(priv);
 if (na->active_fds <= 0 || nm_kring_pending(priv)) {
  na->nm_register(na, 0);
 }


 netmap_mem_rings_delete(na);

 if (na->active_fds <= 0) {
  if (netmap_debug & NM_DEBUG_ON)
   nm_prinf("deleting last instance for %s", na->name);

  if (nm_netmap_on(na)) {
   nm_prerr("BUG: netmap on while going to delete the krings");
  }

  na->nm_krings_delete(na);


  if (na->na_flags & NAF_HOST_RINGS) {
   na->num_host_tx_rings = 1;
   na->num_host_rx_rings = 1;
  } else {
   na->num_host_tx_rings = 0;
   na->num_host_rx_rings = 0;
  }
 }


 netmap_unset_ringid(priv);

 netmap_mem_if_delete(na, priv->np_nifp);

 netmap_mem_drop(na);

 priv->np_na = ((void*)0);
 priv->np_nifp = ((void*)0);
}
