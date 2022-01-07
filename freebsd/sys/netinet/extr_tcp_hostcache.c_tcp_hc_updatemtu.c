
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct in_conninfo {int dummy; } ;
struct hc_metrics {TYPE_1__* rmx_head; int rmx_mtu; int rmx_expire; int rmx_updates; } ;
struct TYPE_4__ {int expire; } ;
struct TYPE_3__ {int hch_mtx; int hch_bucket; } ;


 int TAILQ_INSERT_HEAD (int *,struct hc_metrics*,int ) ;
 int TAILQ_REMOVE (int *,struct hc_metrics*,int ) ;
 int THC_UNLOCK (int *) ;
 TYPE_2__ V_tcp_hostcache ;
 int V_tcp_use_hostcache ;
 int rmx_q ;
 struct hc_metrics* tcp_hc_insert (struct in_conninfo*) ;
 struct hc_metrics* tcp_hc_lookup (struct in_conninfo*) ;

void
tcp_hc_updatemtu(struct in_conninfo *inc, uint32_t mtu)
{
 struct hc_metrics *hc_entry;

 if (!V_tcp_use_hostcache)
  return;




 hc_entry = tcp_hc_lookup(inc);




 if (hc_entry == ((void*)0)) {
  hc_entry = tcp_hc_insert(inc);
  if (hc_entry == ((void*)0))
   return;
 }
 hc_entry->rmx_updates++;
 hc_entry->rmx_expire = V_tcp_hostcache.expire;

 hc_entry->rmx_mtu = mtu;




 TAILQ_REMOVE(&hc_entry->rmx_head->hch_bucket, hc_entry, rmx_q);
 TAILQ_INSERT_HEAD(&hc_entry->rmx_head->hch_bucket, hc_entry, rmx_q);




 THC_UNLOCK(&hc_entry->rmx_head->hch_mtx);
}
