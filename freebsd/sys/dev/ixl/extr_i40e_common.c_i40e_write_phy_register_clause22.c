
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
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_ERR_TIMEOUT ;
 int I40E_GLGEN_MSCA (int) ;
 int I40E_GLGEN_MSCA_DEVADD_SHIFT ;
 int I40E_GLGEN_MSCA_MDICMD_MASK ;
 int I40E_GLGEN_MSCA_PHYADD_SHIFT ;
 int I40E_GLGEN_MSRWD (int) ;
 int I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT ;
 int I40E_MDIO_CLAUSE22_OPCODE_WRITE_MASK ;
 int I40E_MDIO_CLAUSE22_STCODE_MASK ;
 int I40E_SUCCESS ;
 int i40e_usec_delay (int) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

enum i40e_status_code i40e_write_phy_register_clause22(struct i40e_hw *hw,
     u16 reg, u8 phy_addr, u16 value)
{
 enum i40e_status_code status = I40E_ERR_TIMEOUT;
 u8 port_num = (u8)hw->func_caps.mdio_port_num;
 u32 command = 0;
 u16 retry = 1000;

 command = value << I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT;
 wr32(hw, I40E_GLGEN_MSRWD(port_num), command);

 command = (reg << I40E_GLGEN_MSCA_DEVADD_SHIFT) |
    (phy_addr << I40E_GLGEN_MSCA_PHYADD_SHIFT) |
    (I40E_MDIO_CLAUSE22_OPCODE_WRITE_MASK) |
    (I40E_MDIO_CLAUSE22_STCODE_MASK) |
    (I40E_GLGEN_MSCA_MDICMD_MASK);

 wr32(hw, I40E_GLGEN_MSCA(port_num), command);
 do {
  command = rd32(hw, I40E_GLGEN_MSCA(port_num));
  if (!(command & I40E_GLGEN_MSCA_MDICMD_MASK)) {
   status = I40E_SUCCESS;
   break;
  }
  i40e_usec_delay(10);
  retry--;
 } while (retry);

 return status;
}
