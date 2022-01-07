
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int current_mode; int high_water; scalar_t__ send_xon; int low_water; } ;
struct e1000_hw {TYPE_1__ fc; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_FCRTH ;
 int E1000_FCRTL ;
 int E1000_FCRTL_XONE ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int e1000_fc_tx_pause ;

s32 e1000_set_fc_watermarks_generic(struct e1000_hw *hw)
{
 u32 fcrtl = 0, fcrth = 0;

 DEBUGFUNC("e1000_set_fc_watermarks_generic");







 if (hw->fc.current_mode & e1000_fc_tx_pause) {




  fcrtl = hw->fc.low_water;
  if (hw->fc.send_xon)
   fcrtl |= E1000_FCRTL_XONE;

  fcrth = hw->fc.high_water;
 }
 E1000_WRITE_REG(hw, E1000_FCRTL, fcrtl);
 E1000_WRITE_REG(hw, E1000_FCRTH, fcrth);

 return E1000_SUCCESS;
}
