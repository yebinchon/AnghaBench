
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_KMRNCTRLSTA_DIAG_NELPBK ;
 int E1000_KMRNCTRLSTA_DIAG_OFFSET ;
 scalar_t__ e1000_ich8lan ;
 scalar_t__ e1000_phy_ife ;
 scalar_t__ e1000_read_kmrn_reg_generic (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1000_write_kmrn_reg_generic (struct e1000_hw*,int ,int ) ;

void e1000_gig_downshift_workaround_ich8lan(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 reg_data;

 DEBUGFUNC("e1000_gig_downshift_workaround_ich8lan");

 if ((hw->mac.type != e1000_ich8lan) ||
     (hw->phy.type == e1000_phy_ife))
  return;

 ret_val = e1000_read_kmrn_reg_generic(hw, E1000_KMRNCTRLSTA_DIAG_OFFSET,
           &reg_data);
 if (ret_val)
  return;
 reg_data |= E1000_KMRNCTRLSTA_DIAG_NELPBK;
 ret_val = e1000_write_kmrn_reg_generic(hw,
            E1000_KMRNCTRLSTA_DIAG_OFFSET,
            reg_data);
 if (ret_val)
  return;
 reg_data &= ~E1000_KMRNCTRLSTA_DIAG_NELPBK;
 e1000_write_kmrn_reg_generic(hw, E1000_KMRNCTRLSTA_DIAG_OFFSET,
         reg_data);
}
