
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct in_conninfo {int dummy; } ;
struct hc_metrics_lite {int rmx_recvpipe; int rmx_sendpipe; int rmx_cwnd; int rmx_rttvar; int rmx_rtt; int rmx_ssthresh; int rmx_mtu; } ;
struct hc_metrics {TYPE_1__* rmx_head; int rmx_recvpipe; int rmx_sendpipe; int rmx_cwnd; int rmx_rttvar; int rmx_rtt; int rmx_ssthresh; int rmx_mtu; int rmx_expire; int rmx_hits; } ;
struct TYPE_4__ {int expire; } ;
struct TYPE_3__ {int hch_mtx; } ;


 int THC_UNLOCK (int *) ;
 TYPE_2__ V_tcp_hostcache ;
 int V_tcp_use_hostcache ;
 int bzero (struct hc_metrics_lite*,int) ;
 struct hc_metrics* tcp_hc_lookup (struct in_conninfo*) ;

void
tcp_hc_get(struct in_conninfo *inc, struct hc_metrics_lite *hc_metrics_lite)
{
 struct hc_metrics *hc_entry;

 if (!V_tcp_use_hostcache)
  return;




 hc_entry = tcp_hc_lookup(inc);




 if (hc_entry == ((void*)0)) {
  bzero(hc_metrics_lite, sizeof(*hc_metrics_lite));
  return;
 }
 hc_entry->rmx_hits++;
 hc_entry->rmx_expire = V_tcp_hostcache.expire;

 hc_metrics_lite->rmx_mtu = hc_entry->rmx_mtu;
 hc_metrics_lite->rmx_ssthresh = hc_entry->rmx_ssthresh;
 hc_metrics_lite->rmx_rtt = hc_entry->rmx_rtt;
 hc_metrics_lite->rmx_rttvar = hc_entry->rmx_rttvar;
 hc_metrics_lite->rmx_cwnd = hc_entry->rmx_cwnd;
 hc_metrics_lite->rmx_sendpipe = hc_entry->rmx_sendpipe;
 hc_metrics_lite->rmx_recvpipe = hc_entry->rmx_recvpipe;




 THC_UNLOCK(&hc_entry->rmx_head->hch_mtx);
}
