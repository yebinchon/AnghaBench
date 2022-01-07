
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct ustorm_eth_queue_zone {int dummy; } ;
struct TYPE_2__ {int queue_id; } ;
struct ecore_queue_cid {TYPE_1__ abs; int sb_igu_id; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 scalar_t__ BAR0_MAP_REG_USDM_RAM ;
 int DP_ERR (struct ecore_hwfn*,char*,int) ;
 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 scalar_t__ USTORM_ETH_QUEUE_ZONE_OFFSET (int ) ;
 int ecore_int_set_timer_res (struct ecore_hwfn*,struct ecore_ptt*,int,int ,int) ;
 int ecore_set_coalesce (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,struct ustorm_eth_queue_zone*,int,int) ;

enum _ecore_status_t ecore_set_rxq_coalesce(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         u16 coalesce,
         struct ecore_queue_cid *p_cid)
{
 struct ustorm_eth_queue_zone eth_qzone;
 u8 timeset, timer_res;
 u32 address;
 enum _ecore_status_t rc;


 if (coalesce <= 0x7F)
  timer_res = 0;
 else if (coalesce <= 0xFF)
  timer_res = 1;
 else if (coalesce <= 0x1FF)
  timer_res = 2;
 else {
  DP_ERR(p_hwfn, "Invalid coalesce value - %d\n", coalesce);
  return ECORE_INVAL;
 }
 timeset = (u8)(coalesce >> timer_res);

 rc = ecore_int_set_timer_res(p_hwfn, p_ptt, timer_res,
         p_cid->sb_igu_id, 0);
 if (rc != ECORE_SUCCESS)
  goto out;

 address = BAR0_MAP_REG_USDM_RAM +
    USTORM_ETH_QUEUE_ZONE_OFFSET(p_cid->abs.queue_id);

 rc = ecore_set_coalesce(p_hwfn, p_ptt, address, &eth_qzone,
    sizeof(struct ustorm_eth_queue_zone), timeset);
 if (rc != ECORE_SUCCESS)
  goto out;

out:
 return rc;
}
