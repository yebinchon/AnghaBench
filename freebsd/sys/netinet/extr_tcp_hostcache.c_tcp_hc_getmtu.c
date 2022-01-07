
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct in_conninfo {int dummy; } ;
struct hc_metrics {TYPE_1__* rmx_head; int rmx_mtu; int rmx_expire; int rmx_hits; } ;
struct TYPE_4__ {int expire; } ;
struct TYPE_3__ {int hch_mtx; } ;


 int THC_UNLOCK (int *) ;
 TYPE_2__ V_tcp_hostcache ;
 int V_tcp_use_hostcache ;
 struct hc_metrics* tcp_hc_lookup (struct in_conninfo*) ;

uint32_t
tcp_hc_getmtu(struct in_conninfo *inc)
{
 struct hc_metrics *hc_entry;
 uint32_t mtu;

 if (!V_tcp_use_hostcache)
  return 0;

 hc_entry = tcp_hc_lookup(inc);
 if (hc_entry == ((void*)0)) {
  return 0;
 }
 hc_entry->rmx_hits++;
 hc_entry->rmx_expire = V_tcp_hostcache.expire;

 mtu = hc_entry->rmx_mtu;
 THC_UNLOCK(&hc_entry->rmx_head->hch_mtx);
 return mtu;
}
