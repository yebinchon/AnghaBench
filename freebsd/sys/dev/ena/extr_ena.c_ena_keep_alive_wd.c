
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ena_admin_aenq_keep_alive_desc {int rx_drops_low; scalar_t__ rx_drops_high; } ;
struct ena_admin_aenq_entry {int dummy; } ;
struct TYPE_2__ {int rx_drops; } ;
struct ena_adapter {int keep_alive_timestamp; TYPE_1__ hw_stats; } ;
typedef int sbintime_t ;


 int atomic_store_rel_64 (int *,int ) ;
 int counter_u64_add (int ,int) ;
 int counter_u64_zero (int ) ;
 int getsbinuptime () ;

__attribute__((used)) static void ena_keep_alive_wd(void *adapter_data,
    struct ena_admin_aenq_entry *aenq_e)
{
 struct ena_adapter *adapter = (struct ena_adapter *)adapter_data;
 struct ena_admin_aenq_keep_alive_desc *desc;
 sbintime_t stime;
 uint64_t rx_drops;

 desc = (struct ena_admin_aenq_keep_alive_desc *)aenq_e;

 rx_drops = ((uint64_t)desc->rx_drops_high << 32) | desc->rx_drops_low;
 counter_u64_zero(adapter->hw_stats.rx_drops);
 counter_u64_add(adapter->hw_stats.rx_drops, rx_drops);

 stime = getsbinuptime();
 atomic_store_rel_64(&adapter->keep_alive_timestamp, stime);
}
