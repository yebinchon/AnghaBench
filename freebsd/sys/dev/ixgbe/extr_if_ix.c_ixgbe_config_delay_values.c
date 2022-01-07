
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* high_water; int send_xon; int pause_time; void** low_water; } ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {TYPE_2__ fc; TYPE_1__ mac; } ;
struct adapter {int max_frame_size; struct ixgbe_hw hw; } ;


 void* IXGBE_BT2KB (int) ;
 int IXGBE_DV (int,int) ;
 int IXGBE_DV_X540 (int,int) ;
 int IXGBE_FC_PAUSE ;
 int IXGBE_LOW_DV (int) ;
 int IXGBE_LOW_DV_X540 (int) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXPBSIZE (int ) ;
 int TRUE ;





__attribute__((used)) static void
ixgbe_config_delay_values(struct adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 rxpb, frame, size, tmp;

 frame = adapter->max_frame_size;


 switch (hw->mac.type) {
 case 131:
 case 130:
 case 128:
 case 129:
  tmp = IXGBE_DV_X540(frame, frame);
  break;
 default:
  tmp = IXGBE_DV(frame, frame);
  break;
 }
 size = IXGBE_BT2KB(tmp);
 rxpb = IXGBE_READ_REG(hw, IXGBE_RXPBSIZE(0)) >> 10;
 hw->fc.high_water[0] = rxpb - size;


 switch (hw->mac.type) {
 case 131:
 case 130:
 case 128:
 case 129:
  tmp = IXGBE_LOW_DV_X540(frame);
  break;
 default:
  tmp = IXGBE_LOW_DV(frame);
  break;
 }
 hw->fc.low_water[0] = IXGBE_BT2KB(tmp);

 hw->fc.pause_time = IXGBE_FC_PAUSE;
 hw->fc.send_xon = TRUE;
}
