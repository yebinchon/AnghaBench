
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int link_speed; scalar_t__ num_tcs; } ;
struct TYPE_4__ {TYPE_1__ dmac_config; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ IXGBE_DCB_MAX_TRAFFIC_CLASS ;
 scalar_t__ IXGBE_DMACRXT_100M ;
 scalar_t__ IXGBE_DMACRXT_10G ;
 scalar_t__ IXGBE_DMACRXT_1G ;
 int IXGBE_DMCTH (scalar_t__) ;
 scalar_t__ IXGBE_DMCTH_DMACRXT_MASK ;



 int IXGBE_MAXFRS ;
 int IXGBE_MHADD_MFS_SHIFT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXPBSIZE (scalar_t__) ;
 scalar_t__ IXGBE_RXPBSIZE_MASK ;
 scalar_t__ IXGBE_RXPBSIZE_SHIFT ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;

s32 ixgbe_dmac_config_tcs_X550(struct ixgbe_hw *hw)
{
 u32 tc, reg, pb_headroom, rx_pb_size, maxframe_size_kb;

 DEBUGFUNC("ixgbe_dmac_config_tcs_X550");


 switch (hw->mac.dmac_config.link_speed) {
 case 129:
 case 130:
  pb_headroom = IXGBE_DMACRXT_100M;
  break;
 case 128:
  pb_headroom = IXGBE_DMACRXT_1G;
  break;
 default:
  pb_headroom = IXGBE_DMACRXT_10G;
  break;
 }

 maxframe_size_kb = ((IXGBE_READ_REG(hw, IXGBE_MAXFRS) >>
        IXGBE_MHADD_MFS_SHIFT) / 1024);


 for (tc = 0; tc < IXGBE_DCB_MAX_TRAFFIC_CLASS; tc++) {
  reg = IXGBE_READ_REG(hw, IXGBE_DMCTH(tc));
  reg &= ~IXGBE_DMCTH_DMACRXT_MASK;

  if (tc < hw->mac.dmac_config.num_tcs) {

   rx_pb_size = IXGBE_READ_REG(hw, IXGBE_RXPBSIZE(tc));
   rx_pb_size = (rx_pb_size & IXGBE_RXPBSIZE_MASK) >>
    IXGBE_RXPBSIZE_SHIFT;


   if (rx_pb_size > pb_headroom)
    rx_pb_size = rx_pb_size - pb_headroom;
   else
    rx_pb_size = 0;


   reg |= (rx_pb_size > maxframe_size_kb) ?
    rx_pb_size : maxframe_size_kb;
  }
  IXGBE_WRITE_REG(hw, IXGBE_DMCTH(tc), reg);
 }
 return IXGBE_SUCCESS;
}
