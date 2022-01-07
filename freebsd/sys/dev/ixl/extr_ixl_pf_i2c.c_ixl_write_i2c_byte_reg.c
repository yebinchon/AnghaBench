
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int mdio_port_num; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef scalar_t__ s32 ;


 int I40E_GLGEN_I2CCMD (int ) ;
 int I40E_GLGEN_I2CCMD_DATA_MASK ;
 int I40E_GLGEN_I2CCMD_DATA_SHIFT ;
 int I40E_GLGEN_I2CCMD_OP_MASK ;
 int I40E_GLGEN_I2CCMD_PHYADD_MASK ;
 int I40E_GLGEN_I2CCMD_PHYADD_SHIFT ;
 int I40E_GLGEN_I2CCMD_REGADD_MASK ;
 int I40E_GLGEN_I2CCMD_REGADD_SHIFT ;
 scalar_t__ I40E_SUCCESS ;
 int IXL_DBG_I2C ;
 int ixl_dbg (struct ixl_pf*,int ,char*) ;
 scalar_t__ ixl_read_i2c_byte_reg (struct ixl_pf*,int,int,int*) ;
 scalar_t__ ixl_wait_for_i2c_completion (struct i40e_hw*,int ) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

s32
ixl_write_i2c_byte_reg(struct ixl_pf *pf, u8 byte_offset,
         u8 dev_addr, u8 data)
{
 struct i40e_hw *hw = &pf->hw;
 s32 status = I40E_SUCCESS;
 u32 reg = 0;
 u8 upperbyte = 0;
 u16 datai2c = 0;

 status = ixl_read_i2c_byte_reg(pf, byte_offset + 1, dev_addr, &upperbyte);
 datai2c = ((u16)upperbyte << 8) | (u16)data;
 reg = rd32(hw, I40E_GLGEN_I2CCMD(hw->func_caps.mdio_port_num));


 reg &= ~I40E_GLGEN_I2CCMD_PHYADD_MASK;
 reg |= (((dev_addr >> 1) & 0x7) << I40E_GLGEN_I2CCMD_PHYADD_SHIFT);
 reg &= ~I40E_GLGEN_I2CCMD_REGADD_MASK;
 reg |= (byte_offset << I40E_GLGEN_I2CCMD_REGADD_SHIFT);
 reg &= ~I40E_GLGEN_I2CCMD_DATA_MASK;
 reg |= (datai2c << I40E_GLGEN_I2CCMD_DATA_SHIFT);
 reg &= ~I40E_GLGEN_I2CCMD_OP_MASK;


 wr32(hw, I40E_GLGEN_I2CCMD(hw->func_caps.mdio_port_num), reg);

 status = ixl_wait_for_i2c_completion(hw, hw->func_caps.mdio_port_num);

 if (status)
  ixl_dbg(pf, IXL_DBG_I2C, "I2C byte write error\n");
 return status;
}
