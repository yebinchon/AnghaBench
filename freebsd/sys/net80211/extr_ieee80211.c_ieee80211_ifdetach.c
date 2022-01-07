
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int dummy; } ;
struct ieee80211com {int * ic_tq; int ic_oerrors; int ic_ierrors; int ic_vaps; int ic_restart_task; } ;


 int IEEE80211_LOCK_DESTROY (struct ieee80211com*) ;
 int IEEE80211_TX_LOCK_DESTROY (struct ieee80211com*) ;
 int LIST_REMOVE (struct ieee80211com*,int ) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int counter_u64_free (int ) ;
 int ic_list_mtx ;
 int ic_next ;
 int ieee80211_com_vdetach (struct ieee80211vap*) ;
 int ieee80211_crypto_detach (struct ieee80211com*) ;
 int ieee80211_dfs_detach (struct ieee80211com*) ;
 int ieee80211_ht_detach (struct ieee80211com*) ;
 int ieee80211_node_detach (struct ieee80211com*) ;
 int ieee80211_power_detach (struct ieee80211com*) ;
 int ieee80211_proto_detach (struct ieee80211com*) ;
 int ieee80211_regdomain_detach (struct ieee80211com*) ;
 int ieee80211_scan_detach (struct ieee80211com*) ;
 int ieee80211_superg_detach (struct ieee80211com*) ;
 int ieee80211_sysctl_detach (struct ieee80211com*) ;
 int ieee80211_vap_destroy (struct ieee80211vap*) ;
 int ieee80211_vht_detach (struct ieee80211com*) ;
 int ieee80211_waitfor_parent (struct ieee80211com*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_free (int *) ;
 int taskqueue_thread ;

void
ieee80211_ifdetach(struct ieee80211com *ic)
{
 struct ieee80211vap *vap;







 if (ic->ic_tq == ((void*)0))
  return;

 mtx_lock(&ic_list_mtx);
 LIST_REMOVE(ic, ic_next);
 mtx_unlock(&ic_list_mtx);

 taskqueue_drain(taskqueue_thread, &ic->ic_restart_task);





 while ((vap = TAILQ_FIRST(&ic->ic_vaps)) != ((void*)0)) {
  ieee80211_com_vdetach(vap);
  ieee80211_vap_destroy(vap);
 }
 ieee80211_waitfor_parent(ic);

 ieee80211_sysctl_detach(ic);
 ieee80211_dfs_detach(ic);
 ieee80211_regdomain_detach(ic);
 ieee80211_scan_detach(ic);



 ieee80211_vht_detach(ic);
 ieee80211_ht_detach(ic);

 ieee80211_proto_detach(ic);
 ieee80211_crypto_detach(ic);
 ieee80211_power_detach(ic);
 ieee80211_node_detach(ic);

 counter_u64_free(ic->ic_ierrors);
 counter_u64_free(ic->ic_oerrors);

 taskqueue_free(ic->ic_tq);
 IEEE80211_TX_LOCK_DESTROY(ic);
 IEEE80211_LOCK_DESTROY(ic);
}
