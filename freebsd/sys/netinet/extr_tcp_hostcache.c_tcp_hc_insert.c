
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_conninfo {int inc_flags; int inc_faddr; int inc6_zoneid; int inc6_faddr; } ;
struct hc_metrics {int rmx_expire; struct hc_head* rmx_head; int ip4; int ip6_zoneid; int ip6; } ;
struct hc_head {scalar_t__ hch_length; int hch_bucket; int hch_mtx; } ;
struct TYPE_2__ {scalar_t__ bucket_limit; scalar_t__ cache_count; scalar_t__ cache_limit; struct hc_head* hashbase; int expire; int zone; } ;


 int HOSTCACHE_HASH (int *) ;
 int HOSTCACHE_HASH6 (int *) ;
 int INC_ISIPV6 ;
 int KASSERT (int ,char*) ;
 int M_NOWAIT ;
 int TAILQ_INSERT_HEAD (int *,struct hc_metrics*,int ) ;
 struct hc_metrics* TAILQ_LAST (int *,int ) ;
 int TAILQ_REMOVE (int *,struct hc_metrics*,int ) ;
 int TCPSTAT_INC (int ) ;
 int THC_LOCK (int *) ;
 int THC_UNLOCK (int *) ;
 TYPE_1__ V_tcp_hostcache ;
 int V_tcp_use_hostcache ;
 int bzero (struct hc_metrics*,int) ;
 int hc_qhead ;
 int rmx_q ;
 int tcps_hc_added ;
 int tcps_hc_bucketoverflow ;
 struct hc_metrics* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct hc_metrics*) ;

__attribute__((used)) static struct hc_metrics *
tcp_hc_insert(struct in_conninfo *inc)
{
 int hash;
 struct hc_head *hc_head;
 struct hc_metrics *hc_entry;

 if (!V_tcp_use_hostcache)
  return ((void*)0);

 KASSERT(inc != ((void*)0), ("tcp_hc_insert with NULL in_conninfo pointer"));




 if (inc->inc_flags & INC_ISIPV6)
  hash = HOSTCACHE_HASH6(&inc->inc6_faddr);
 else
  hash = HOSTCACHE_HASH(&inc->inc_faddr);

 hc_head = &V_tcp_hostcache.hashbase[hash];






 THC_LOCK(&hc_head->hch_mtx);




 if (hc_head->hch_length >= V_tcp_hostcache.bucket_limit ||
     V_tcp_hostcache.cache_count >= V_tcp_hostcache.cache_limit) {
  hc_entry = TAILQ_LAST(&hc_head->hch_bucket, hc_qhead);
  if (hc_entry == ((void*)0)) {
   THC_UNLOCK(&hc_head->hch_mtx);
   return ((void*)0);
  }
  TAILQ_REMOVE(&hc_head->hch_bucket, hc_entry, rmx_q);
  V_tcp_hostcache.hashbase[hash].hch_length--;
  V_tcp_hostcache.cache_count--;
  TCPSTAT_INC(tcps_hc_bucketoverflow);



 } else {



  hc_entry = uma_zalloc(V_tcp_hostcache.zone, M_NOWAIT);
  if (hc_entry == ((void*)0)) {
   THC_UNLOCK(&hc_head->hch_mtx);
   return ((void*)0);
  }
 }




 bzero(hc_entry, sizeof(*hc_entry));
 if (inc->inc_flags & INC_ISIPV6) {
  hc_entry->ip6 = inc->inc6_faddr;
  hc_entry->ip6_zoneid = inc->inc6_zoneid;
 } else
  hc_entry->ip4 = inc->inc_faddr;
 hc_entry->rmx_head = hc_head;
 hc_entry->rmx_expire = V_tcp_hostcache.expire;




 TAILQ_INSERT_HEAD(&hc_head->hch_bucket, hc_entry, rmx_q);
 V_tcp_hostcache.hashbase[hash].hch_length++;
 V_tcp_hostcache.cache_count++;
 TCPSTAT_INC(tcps_hc_added);

 return hc_entry;
}
