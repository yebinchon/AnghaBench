
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct eth_mstorm_per_queue_stat {int tpa_coalesced_bytes; int tpa_aborts_num; int tpa_coalesced_events; int tpa_coalesced_pkts; int ttl0_discard; int packet_too_big_discard; int no_buff_discard; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_2__ {int tpa_coalesced_bytes; int tpa_aborts_num; int tpa_coalesced_events; int tpa_coalesced_pkts; int ttl0_discard; int packet_too_big_discard; int no_buff_discards; } ;
struct ecore_eth_stats {TYPE_1__ common; } ;
typedef int mstats ;


 scalar_t__ HILO_64_REGPAIR (int ) ;
 int OSAL_MEMSET (struct eth_mstorm_per_queue_stat*,int ,int) ;
 int __ecore_get_vport_mstats_addrlen (struct ecore_hwfn*,int *,int *,int ) ;
 int ecore_memcpy_from (struct ecore_hwfn*,struct ecore_ptt*,struct eth_mstorm_per_queue_stat*,int ,int ) ;

__attribute__((used)) static void __ecore_get_vport_mstats(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         struct ecore_eth_stats *p_stats,
         u16 statistics_bin)
{
 struct eth_mstorm_per_queue_stat mstats;
 u32 mstats_addr = 0, mstats_len = 0;

 __ecore_get_vport_mstats_addrlen(p_hwfn, &mstats_addr, &mstats_len,
      statistics_bin);

 OSAL_MEMSET(&mstats, 0, sizeof(mstats));
 ecore_memcpy_from(p_hwfn, p_ptt, &mstats,
     mstats_addr, mstats_len);

 p_stats->common.no_buff_discards +=
  HILO_64_REGPAIR(mstats.no_buff_discard);
 p_stats->common.packet_too_big_discard +=
  HILO_64_REGPAIR(mstats.packet_too_big_discard);
 p_stats->common.ttl0_discard +=
  HILO_64_REGPAIR(mstats.ttl0_discard);
 p_stats->common.tpa_coalesced_pkts +=
  HILO_64_REGPAIR(mstats.tpa_coalesced_pkts);
 p_stats->common.tpa_coalesced_events +=
  HILO_64_REGPAIR(mstats.tpa_coalesced_events);
 p_stats->common.tpa_aborts_num +=
  HILO_64_REGPAIR(mstats.tpa_aborts_num);
 p_stats->common.tpa_coalesced_bytes +=
  HILO_64_REGPAIR(mstats.tpa_coalesced_bytes);
}
