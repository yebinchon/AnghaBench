
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_adapter {int hw_stats; TYPE_1__* ifp; } ;
typedef int counter_u64_t ;
struct TYPE_2__ {int if_mtu; } ;


 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_RSS_ACTIVE ;
 int ena_change_mtu (TYPE_1__*,int ) ;
 int ena_refill_all_rx_bufs (struct ena_adapter*) ;
 int ena_reset_counters (int *,int) ;
 int ena_rss_configure (struct ena_adapter*) ;
 scalar_t__ likely (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ena_up_complete(struct ena_adapter *adapter)
{
 int rc;

 if (likely(ENA_FLAG_ISSET(ENA_FLAG_RSS_ACTIVE, adapter))) {
  rc = ena_rss_configure(adapter);
  if (rc != 0)
   return (rc);
 }

 rc = ena_change_mtu(adapter->ifp, adapter->ifp->if_mtu);
 if (unlikely(rc != 0))
  return (rc);

 ena_refill_all_rx_bufs(adapter);
 ena_reset_counters((counter_u64_t *)&adapter->hw_stats,
     sizeof(adapter->hw_stats));

 return (0);
}
