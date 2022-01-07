
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int asq_last_status; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef scalar_t__ s32 ;


 int I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE ;
 scalar_t__ I40E_SUCCESS ;
 int IXL_DBG_I2C ;
 scalar_t__ i40e_aq_set_phy_register (struct i40e_hw*,int ,int ,int ,int ,int *) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int i40e_stat_str (struct i40e_hw*,scalar_t__) ;
 int ixl_dbg (struct ixl_pf*,int ,char*,int ,int ) ;

s32
ixl_write_i2c_byte_aq(struct ixl_pf *pf, u8 byte_offset,
         u8 dev_addr, u8 data)
{
 struct i40e_hw *hw = &pf->hw;
 s32 status = I40E_SUCCESS;

 status = i40e_aq_set_phy_register(hw,
     I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE,
     dev_addr,
     byte_offset,
     data, ((void*)0));

 if (status)
  ixl_dbg(pf, IXL_DBG_I2C, "I2C byte write status %s, error %s\n",
      i40e_stat_str(hw, status), i40e_aq_str(hw, hw->aq.asq_last_status));

 return status;
}
