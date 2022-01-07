
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct eth_pstorm_per_queue_stat {int error_drop_pkts; int sent_bcast_pkts; int sent_mcast_pkts; int sent_ucast_pkts; int sent_bcast_bytes; int sent_mcast_bytes; int sent_ucast_bytes; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_2__ {int tx_err_drop_pkts; int tx_bcast_pkts; int tx_mcast_pkts; int tx_ucast_pkts; int tx_bcast_bytes; int tx_mcast_bytes; int tx_ucast_bytes; } ;
struct ecore_eth_stats {TYPE_1__ common; } ;
typedef int pstats ;


 scalar_t__ HILO_64_REGPAIR (int ) ;
 int OSAL_MEMSET (struct eth_pstorm_per_queue_stat*,int ,int) ;
 int __ecore_get_vport_pstats_addrlen (struct ecore_hwfn*,int *,int *,int ) ;
 int ecore_memcpy_from (struct ecore_hwfn*,struct ecore_ptt*,struct eth_pstorm_per_queue_stat*,int ,int ) ;

__attribute__((used)) static void __ecore_get_vport_pstats(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         struct ecore_eth_stats *p_stats,
         u16 statistics_bin)
{
 struct eth_pstorm_per_queue_stat pstats;
 u32 pstats_addr = 0, pstats_len = 0;

 __ecore_get_vport_pstats_addrlen(p_hwfn, &pstats_addr, &pstats_len,
      statistics_bin);

 OSAL_MEMSET(&pstats, 0, sizeof(pstats));
 ecore_memcpy_from(p_hwfn, p_ptt, &pstats,
     pstats_addr, pstats_len);

 p_stats->common.tx_ucast_bytes +=
  HILO_64_REGPAIR(pstats.sent_ucast_bytes);
 p_stats->common.tx_mcast_bytes +=
  HILO_64_REGPAIR(pstats.sent_mcast_bytes);
 p_stats->common.tx_bcast_bytes +=
  HILO_64_REGPAIR(pstats.sent_bcast_bytes);
 p_stats->common.tx_ucast_pkts +=
  HILO_64_REGPAIR(pstats.sent_ucast_pkts);
 p_stats->common.tx_mcast_pkts +=
  HILO_64_REGPAIR(pstats.sent_mcast_pkts);
 p_stats->common.tx_bcast_pkts +=
  HILO_64_REGPAIR(pstats.sent_bcast_pkts);
 p_stats->common.tx_err_drop_pkts +=
  HILO_64_REGPAIR(pstats.error_drop_pkts);
}
