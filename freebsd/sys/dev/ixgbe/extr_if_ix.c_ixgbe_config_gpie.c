
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct adapter {scalar_t__ intr_type; int feat_en; struct ixgbe_hw hw; } ;


 scalar_t__ IFLIB_INTR_MSIX ;
 int IXGBE_FEATURE_FAN_FAIL ;
 int IXGBE_FEATURE_TEMP_SENSOR ;
 int IXGBE_GPIE ;
 int IXGBE_GPIE_EIAME ;
 int IXGBE_GPIE_MSIX_MODE ;
 int IXGBE_GPIE_OCD ;
 int IXGBE_GPIE_PBA_SUPPORT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SDP0_GPIEN_X540 ;
 int IXGBE_SDP1_GPIEN ;
 int IXGBE_SDP2_GPIEN ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;




__attribute__((used)) static void
ixgbe_config_gpie(struct adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 gpie;

 gpie = IXGBE_READ_REG(hw, IXGBE_GPIE);

 if (adapter->intr_type == IFLIB_INTR_MSIX) {

  gpie |= IXGBE_GPIE_MSIX_MODE
       | IXGBE_GPIE_EIAME
       | IXGBE_GPIE_PBA_SUPPORT
       | IXGBE_GPIE_OCD;
 }


 if (adapter->feat_en & IXGBE_FEATURE_FAN_FAIL)
  gpie |= IXGBE_SDP1_GPIEN;


 if (adapter->feat_en & IXGBE_FEATURE_TEMP_SENSOR)
  gpie |= IXGBE_SDP0_GPIEN_X540;


 switch (hw->mac.type) {
 case 130:
  gpie |= IXGBE_SDP1_GPIEN | IXGBE_SDP2_GPIEN;
  break;
 case 128:
 case 129:
  gpie |= IXGBE_SDP0_GPIEN_X540;
  break;
 default:
  break;
 }

 IXGBE_WRITE_REG(hw, IXGBE_GPIE, gpie);

}
