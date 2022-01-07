
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ustats ;
typedef int u32 ;
typedef int u16 ;
struct eth_ustorm_per_queue_stat {int rcv_bcast_pkts; int rcv_mcast_pkts; int rcv_ucast_pkts; int rcv_bcast_bytes; int rcv_mcast_bytes; int rcv_ucast_bytes; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_2__ {int rx_bcast_pkts; int rx_mcast_pkts; int rx_ucast_pkts; int rx_bcast_bytes; int rx_mcast_bytes; int rx_ucast_bytes; } ;
struct ecore_eth_stats {TYPE_1__ common; } ;


 scalar_t__ HILO_64_REGPAIR (int ) ;
 int OSAL_MEMSET (struct eth_ustorm_per_queue_stat*,int ,int) ;
 int __ecore_get_vport_ustats_addrlen (struct ecore_hwfn*,int *,int *,int ) ;
 int ecore_memcpy_from (struct ecore_hwfn*,struct ecore_ptt*,struct eth_ustorm_per_queue_stat*,int ,int ) ;

__attribute__((used)) static void __ecore_get_vport_ustats(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         struct ecore_eth_stats *p_stats,
         u16 statistics_bin)
{
 struct eth_ustorm_per_queue_stat ustats;
 u32 ustats_addr = 0, ustats_len = 0;

 __ecore_get_vport_ustats_addrlen(p_hwfn, &ustats_addr, &ustats_len,
      statistics_bin);

 OSAL_MEMSET(&ustats, 0, sizeof(ustats));
 ecore_memcpy_from(p_hwfn, p_ptt, &ustats,
     ustats_addr, ustats_len);

 p_stats->common.rx_ucast_bytes +=
  HILO_64_REGPAIR(ustats.rcv_ucast_bytes);
 p_stats->common.rx_mcast_bytes +=
  HILO_64_REGPAIR(ustats.rcv_mcast_bytes);
 p_stats->common.rx_bcast_bytes +=
  HILO_64_REGPAIR(ustats.rcv_bcast_bytes);
 p_stats->common.rx_ucast_pkts +=
  HILO_64_REGPAIR(ustats.rcv_ucast_pkts);
 p_stats->common.rx_mcast_pkts +=
  HILO_64_REGPAIR(ustats.rcv_mcast_pkts);
 p_stats->common.rx_bcast_pkts +=
  HILO_64_REGPAIR(ustats.rcv_bcast_pkts);
}
