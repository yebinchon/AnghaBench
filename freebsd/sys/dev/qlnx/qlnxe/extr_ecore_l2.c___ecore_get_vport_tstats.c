
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int tstats ;
struct tstorm_per_port_stat {int eth_mac_filter_discard; int mftag_filter_discard; } ;
struct TYPE_5__ {int address; int len; } ;
struct TYPE_6__ {TYPE_1__ tstats; } ;
struct TYPE_7__ {TYPE_2__ stats_info; } ;
struct pfvf_acquire_resp_tlv {TYPE_3__ pfdev_info; } ;
struct ecore_vf_iov {struct pfvf_acquire_resp_tlv acquire_resp; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_vf_iov* vf_iov_info; int p_dev; } ;
struct TYPE_8__ {int mac_filter_discards; int mftag_filter_discards; } ;
struct ecore_eth_stats {TYPE_4__ common; } ;


 int BAR0_MAP_REG_TSDM_RAM ;
 scalar_t__ HILO_64_REGPAIR (int ) ;
 scalar_t__ IS_PF (int ) ;
 int MFW_PORT (struct ecore_hwfn*) ;
 int OSAL_MEMSET (struct tstorm_per_port_stat*,int ,int) ;
 int TSTORM_PORT_STAT_OFFSET (int ) ;
 int ecore_memcpy_from (struct ecore_hwfn*,struct ecore_ptt*,struct tstorm_per_port_stat*,int,int) ;

__attribute__((used)) static void __ecore_get_vport_tstats(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         struct ecore_eth_stats *p_stats)
{
 struct tstorm_per_port_stat tstats;
 u32 tstats_addr, tstats_len;

 if (IS_PF(p_hwfn->p_dev)) {
  tstats_addr = BAR0_MAP_REG_TSDM_RAM +
         TSTORM_PORT_STAT_OFFSET(MFW_PORT(p_hwfn));
  tstats_len = sizeof(struct tstorm_per_port_stat);
 } else {
  struct ecore_vf_iov *p_iov = p_hwfn->vf_iov_info;
  struct pfvf_acquire_resp_tlv *p_resp = &p_iov->acquire_resp;

  tstats_addr = p_resp->pfdev_info.stats_info.tstats.address;
  tstats_len = p_resp->pfdev_info.stats_info.tstats.len;
 }

 OSAL_MEMSET(&tstats, 0, sizeof(tstats));
 ecore_memcpy_from(p_hwfn, p_ptt, &tstats,
     tstats_addr, tstats_len);

 p_stats->common.mftag_filter_discards +=
  HILO_64_REGPAIR(tstats.mftag_filter_discard);
 p_stats->common.mac_filter_discards +=
  HILO_64_REGPAIR(tstats.eth_mac_filter_discard);
}
