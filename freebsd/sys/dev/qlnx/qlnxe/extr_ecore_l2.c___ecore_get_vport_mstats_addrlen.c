
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int address; int len; } ;
struct TYPE_5__ {TYPE_1__ mstats; } ;
struct TYPE_6__ {TYPE_2__ stats_info; } ;
struct pfvf_acquire_resp_tlv {TYPE_3__ pfdev_info; } ;
struct eth_mstorm_per_queue_stat {int dummy; } ;
struct ecore_vf_iov {struct pfvf_acquire_resp_tlv acquire_resp; } ;
struct ecore_hwfn {struct ecore_vf_iov* vf_iov_info; int p_dev; } ;


 int BAR0_MAP_REG_MSDM_RAM ;
 scalar_t__ IS_PF (int ) ;
 int MSTORM_QUEUE_STAT_OFFSET (int ) ;

__attribute__((used)) static void __ecore_get_vport_mstats_addrlen(struct ecore_hwfn *p_hwfn,
          u32 *p_addr, u32 *p_len,
          u16 statistics_bin)
{
 if (IS_PF(p_hwfn->p_dev)) {
  *p_addr = BAR0_MAP_REG_MSDM_RAM +
     MSTORM_QUEUE_STAT_OFFSET(statistics_bin);
  *p_len = sizeof(struct eth_mstorm_per_queue_stat);
 } else {
  struct ecore_vf_iov *p_iov = p_hwfn->vf_iov_info;
  struct pfvf_acquire_resp_tlv *p_resp = &p_iov->acquire_resp;

  *p_addr = p_resp->pfdev_info.stats_info.mstats.address;
  *p_len = p_resp->pfdev_info.stats_info.mstats.len;
 }
}
