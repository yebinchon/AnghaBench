
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ustats ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_ll2_stats {int rcv_bcast_pkts; int rcv_mcast_pkts; int rcv_ucast_pkts; int rcv_bcast_bytes; int rcv_mcast_bytes; int rcv_ucast_bytes; } ;
struct ecore_ll2_info {int queue_id; } ;
struct ecore_hwfn {int dummy; } ;
struct core_ll2_ustorm_per_queue_stat {int rcv_bcast_pkts; int rcv_mcast_pkts; int rcv_ucast_pkts; int rcv_bcast_bytes; int rcv_mcast_bytes; int rcv_ucast_bytes; } ;


 scalar_t__ BAR0_MAP_REG_USDM_RAM ;
 scalar_t__ CORE_LL2_USTORM_PER_QUEUE_STAT_OFFSET (int ) ;
 scalar_t__ HILO_64_REGPAIR (int ) ;
 int OSAL_MEMSET (struct core_ll2_ustorm_per_queue_stat*,int ,int) ;
 int ecore_memcpy_from (struct ecore_hwfn*,struct ecore_ptt*,struct core_ll2_ustorm_per_queue_stat*,scalar_t__,int) ;

__attribute__((used)) static void _ecore_ll2_get_ustats(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt,
      struct ecore_ll2_info *p_ll2_conn,
      struct ecore_ll2_stats *p_stats)
{
 struct core_ll2_ustorm_per_queue_stat ustats;
 u8 qid = p_ll2_conn->queue_id;
 u32 ustats_addr;

 OSAL_MEMSET(&ustats, 0, sizeof(ustats));
 ustats_addr = BAR0_MAP_REG_USDM_RAM +
        CORE_LL2_USTORM_PER_QUEUE_STAT_OFFSET(qid);
 ecore_memcpy_from(p_hwfn, p_ptt, &ustats,
     ustats_addr,
     sizeof(ustats));

 p_stats->rcv_ucast_bytes += HILO_64_REGPAIR(ustats.rcv_ucast_bytes);
 p_stats->rcv_mcast_bytes += HILO_64_REGPAIR(ustats.rcv_mcast_bytes);
 p_stats->rcv_bcast_bytes += HILO_64_REGPAIR(ustats.rcv_bcast_bytes);
 p_stats->rcv_ucast_pkts += HILO_64_REGPAIR(ustats.rcv_ucast_pkts);
 p_stats->rcv_mcast_pkts += HILO_64_REGPAIR(ustats.rcv_mcast_pkts);
 p_stats->rcv_bcast_pkts += HILO_64_REGPAIR(ustats.rcv_bcast_pkts);
}
