
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_txpowlimit; int ic_bintval; int ic_lintval; int ic_hash_key; int ic_update_chw; int ic_update_promisc; int ic_update_mcast; void* ic_oerrors; void* ic_ierrors; int ic_name; int ic_tq; int ic_vaps; } ;


 int IEEE80211_BINTVAL_DEFAULT ;
 int IEEE80211_LOCK_INIT (struct ieee80211com*,int ) ;
 int IEEE80211_TXPOWER_MAX ;
 int IEEE80211_TX_LOCK_INIT (struct ieee80211com*,int ) ;
 int LIST_INSERT_HEAD (int *,struct ieee80211com*,int ) ;
 int M_WAITOK ;
 int M_ZERO ;
 int PI_NET ;
 int TAILQ_INIT (int *) ;
 int arc4random () ;
 void* counter_u64_alloc (int) ;
 int ic_head ;
 int ic_list_mtx ;
 int ic_next ;
 int ieee80211_chan_init (struct ieee80211com*) ;
 int ieee80211_crypto_attach (struct ieee80211com*) ;
 int ieee80211_dfs_attach (struct ieee80211com*) ;
 int ieee80211_ht_attach (struct ieee80211com*) ;
 int ieee80211_node_attach (struct ieee80211com*) ;
 int ieee80211_power_attach (struct ieee80211com*) ;
 int ieee80211_proto_attach (struct ieee80211com*) ;
 int ieee80211_regdomain_attach (struct ieee80211com*) ;
 int ieee80211_scan_attach (struct ieee80211com*) ;
 int ieee80211_superg_attach (struct ieee80211com*) ;
 int ieee80211_sysctl_attach (struct ieee80211com*) ;
 int ieee80211_vht_attach (struct ieee80211com*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int null_update_chw ;
 int null_update_mcast ;
 int null_update_promisc ;
 int taskqueue_create (char*,int,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

void
ieee80211_ifattach(struct ieee80211com *ic)
{

 IEEE80211_LOCK_INIT(ic, ic->ic_name);
 IEEE80211_TX_LOCK_INIT(ic, ic->ic_name);
 TAILQ_INIT(&ic->ic_vaps);


 ic->ic_tq = taskqueue_create("ic_taskq", M_WAITOK | M_ZERO,
     taskqueue_thread_enqueue, &ic->ic_tq);
 taskqueue_start_threads(&ic->ic_tq, 1, PI_NET, "%s net80211 taskq",
     ic->ic_name);
 ic->ic_ierrors = counter_u64_alloc(M_WAITOK);
 ic->ic_oerrors = counter_u64_alloc(M_WAITOK);





 ieee80211_chan_init(ic);

 ic->ic_update_mcast = null_update_mcast;
 ic->ic_update_promisc = null_update_promisc;
 ic->ic_update_chw = null_update_chw;

 ic->ic_hash_key = arc4random();
 ic->ic_bintval = IEEE80211_BINTVAL_DEFAULT;
 ic->ic_lintval = ic->ic_bintval;
 ic->ic_txpowlimit = IEEE80211_TXPOWER_MAX;

 ieee80211_crypto_attach(ic);
 ieee80211_node_attach(ic);
 ieee80211_power_attach(ic);
 ieee80211_proto_attach(ic);



 ieee80211_ht_attach(ic);
 ieee80211_vht_attach(ic);
 ieee80211_scan_attach(ic);
 ieee80211_regdomain_attach(ic);
 ieee80211_dfs_attach(ic);

 ieee80211_sysctl_attach(ic);

 mtx_lock(&ic_list_mtx);
 LIST_INSERT_HEAD(&ic_head, ic, ic_next);
 mtx_unlock(&ic_list_mtx);
}
