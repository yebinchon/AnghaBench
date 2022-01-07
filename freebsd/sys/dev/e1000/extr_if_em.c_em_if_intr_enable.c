
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct adapter {int ims; struct e1000_hw hw; } ;
typedef int if_ctx_t ;


 int E1000_IMS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int EM_EIAC ;
 int EM_MSIX_MASK ;
 int IMS_ENABLE_MASK ;
 scalar_t__ e1000_82574 ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
em_if_intr_enable(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct e1000_hw *hw = &adapter->hw;
 u32 ims_mask = IMS_ENABLE_MASK;

 if (hw->mac.type == e1000_82574) {
  E1000_WRITE_REG(hw, EM_EIAC, EM_MSIX_MASK);
  ims_mask |= adapter->ims;
 }
 E1000_WRITE_REG(hw, E1000_IMS, ims_mask);
}
