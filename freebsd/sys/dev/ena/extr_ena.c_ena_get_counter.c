
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ena_hw_stats {int rx_drops; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct ena_adapter {struct ena_hw_stats hw_stats; } ;
typedef int ift_counter ;
typedef int if_t ;







 int counter_u64_fetch (int ) ;
 int if_get_counter_default (int ,int) ;
 struct ena_adapter* if_getsoftc (int ) ;

__attribute__((used)) static uint64_t
ena_get_counter(if_t ifp, ift_counter cnt)
{
 struct ena_adapter *adapter;
 struct ena_hw_stats *stats;

 adapter = if_getsoftc(ifp);
 stats = &adapter->hw_stats;

 switch (cnt) {
 case 131:
  return (counter_u64_fetch(stats->rx_packets));
 case 128:
  return (counter_u64_fetch(stats->tx_packets));
 case 132:
  return (counter_u64_fetch(stats->rx_bytes));
 case 129:
  return (counter_u64_fetch(stats->tx_bytes));
 case 130:
  return (counter_u64_fetch(stats->rx_drops));
 default:
  return (if_get_counter_default(ifp, cnt));
 }
}
