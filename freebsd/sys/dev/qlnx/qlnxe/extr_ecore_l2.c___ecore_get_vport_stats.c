
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {scalar_t__ mcp_info; int p_dev; } ;
struct ecore_eth_stats {int dummy; } ;


 scalar_t__ CHIP_REV_IS_EMUL (int ) ;
 int __ecore_get_vport_mstats (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_eth_stats*,int ) ;
 int __ecore_get_vport_port_stats (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_eth_stats*) ;
 int __ecore_get_vport_pstats (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_eth_stats*,int ) ;
 int __ecore_get_vport_tstats (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_eth_stats*) ;
 int __ecore_get_vport_ustats (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_eth_stats*,int ) ;

void __ecore_get_vport_stats(struct ecore_hwfn *p_hwfn,
        struct ecore_ptt *p_ptt,
        struct ecore_eth_stats *stats,
        u16 statistics_bin, bool b_get_port_stats)
{
 __ecore_get_vport_mstats(p_hwfn, p_ptt, stats, statistics_bin);
 __ecore_get_vport_ustats(p_hwfn, p_ptt, stats, statistics_bin);
 __ecore_get_vport_tstats(p_hwfn, p_ptt, stats);
 __ecore_get_vport_pstats(p_hwfn, p_ptt, stats, statistics_bin);



 if (CHIP_REV_IS_EMUL(p_hwfn->p_dev))
  return;


 if (b_get_port_stats && p_hwfn->mcp_info)
  __ecore_get_vport_port_stats(p_hwfn, p_ptt, stats);
}
