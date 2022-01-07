
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_10__ {int requested_mode; } ;
struct TYPE_8__ {scalar_t__ (* read ) (struct e1000_hw*,int,int,int*) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_7__ {int func; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_5__ fc; TYPE_4__ nvm; TYPE_2__ bus; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_SUCCESS ;
 int NVM_82580_LAN_FUNC_OFFSET (int ) ;
 int NVM_INIT_CONTROL2_REG ;
 int NVM_WORD0F_ASM_DIR ;
 int NVM_WORD0F_PAUSE_MASK ;
 int e1000_fc_full ;
 int e1000_fc_none ;
 int e1000_fc_tx_pause ;
 scalar_t__ e1000_i350 ;
 scalar_t__ stub1 (struct e1000_hw*,int,int,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int,int,int*) ;

s32 e1000_set_default_fc_generic(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 nvm_data;
 u16 nvm_offset = 0;

 DEBUGFUNC("e1000_set_default_fc_generic");
 if (hw->mac.type == e1000_i350) {
  nvm_offset = NVM_82580_LAN_FUNC_OFFSET(hw->bus.func);
  ret_val = hw->nvm.ops.read(hw,
        NVM_INIT_CONTROL2_REG +
        nvm_offset,
        1, &nvm_data);
 } else {
  ret_val = hw->nvm.ops.read(hw,
        NVM_INIT_CONTROL2_REG,
        1, &nvm_data);
 }


 if (ret_val) {
  DEBUGOUT("NVM Read Error\n");
  return ret_val;
 }

 if (!(nvm_data & NVM_WORD0F_PAUSE_MASK))
  hw->fc.requested_mode = e1000_fc_none;
 else if ((nvm_data & NVM_WORD0F_PAUSE_MASK) ==
   NVM_WORD0F_ASM_DIR)
  hw->fc.requested_mode = e1000_fc_tx_pause;
 else
  hw->fc.requested_mode = e1000_fc_full;

 return E1000_SUCCESS;
}
