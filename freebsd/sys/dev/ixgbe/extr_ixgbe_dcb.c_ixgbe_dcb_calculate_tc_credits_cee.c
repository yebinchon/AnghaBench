
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_dcb_tc_path {size_t bwg_id; size_t bwg_percent; size_t link_percent; size_t data_credits_refill; size_t data_credits_max; } ;
struct ixgbe_dcb_config {size_t** bw_percentage; TYPE_2__* tc_config; } ;
typedef int s32 ;
struct TYPE_4__ {size_t desc_credits_max; struct ixgbe_dcb_tc_path* path; } ;


 int IXGBE_DCB_CREDIT_QUANTUM ;
 size_t IXGBE_DCB_MAX_CREDIT ;
 scalar_t__ IXGBE_DCB_MAX_CREDIT_REFILL ;
 size_t IXGBE_DCB_MAX_TRAFFIC_CLASS ;
 int IXGBE_DCB_MIN_TSO_CREDIT ;
 size_t IXGBE_DCB_TX_CONFIG ;
 int IXGBE_ERR_CONFIG ;
 int IXGBE_SUCCESS ;
 scalar_t__ ixgbe_mac_82598EB ;
 int min (size_t,int) ;

s32 ixgbe_dcb_calculate_tc_credits_cee(struct ixgbe_hw *hw,
       struct ixgbe_dcb_config *dcb_config,
       u32 max_frame_size, u8 direction)
{
 struct ixgbe_dcb_tc_path *p;
 u32 min_multiplier = 0;
 u16 min_percent = 100;
 s32 ret_val = IXGBE_SUCCESS;

 u32 min_credit = 0;
 u32 credit_refill = 0;
 u32 credit_max = 0;
 u16 link_percentage = 0;
 u8 bw_percent = 0;
 u8 i;

 if (dcb_config == ((void*)0)) {
  ret_val = IXGBE_ERR_CONFIG;
  goto out;
 }

 min_credit = ((max_frame_size / 2) + IXGBE_DCB_CREDIT_QUANTUM - 1) /
       IXGBE_DCB_CREDIT_QUANTUM;


 for (i = 0; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
  p = &dcb_config->tc_config[i].path[direction];
  bw_percent = dcb_config->bw_percentage[direction][p->bwg_id];
  link_percentage = p->bwg_percent;

  link_percentage = (link_percentage * bw_percent) / 100;

  if (link_percentage && link_percentage < min_percent)
   min_percent = link_percentage;
 }
 min_multiplier = (min_credit / min_percent) + 1;


 for (i = 0; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
  p = &dcb_config->tc_config[i].path[direction];
  bw_percent = dcb_config->bw_percentage[direction][p->bwg_id];

  link_percentage = p->bwg_percent;

  link_percentage = (link_percentage * bw_percent) / 100;
  if (p->bwg_percent > 0 && link_percentage == 0)
   link_percentage = 1;


  p->link_percent = (u8)link_percentage;


  credit_refill = min(link_percentage * min_multiplier,
        (u32)IXGBE_DCB_MAX_CREDIT_REFILL);


  if (credit_refill < min_credit)
   credit_refill = min_credit;

  p->data_credits_refill = (u16)credit_refill;


  credit_max = (link_percentage * IXGBE_DCB_MAX_CREDIT) / 100;






  if (credit_max < min_credit)
   credit_max = min_credit;

  if (direction == IXGBE_DCB_TX_CONFIG) {






   if (credit_max && (credit_max <
       IXGBE_DCB_MIN_TSO_CREDIT)
       && (hw->mac.type == ixgbe_mac_82598EB))
    credit_max = IXGBE_DCB_MIN_TSO_CREDIT;

   dcb_config->tc_config[i].desc_credits_max =
        (u16)credit_max;
  }

  p->data_credits_max = (u16)credit_max;
 }

out:
 return ret_val;
}
