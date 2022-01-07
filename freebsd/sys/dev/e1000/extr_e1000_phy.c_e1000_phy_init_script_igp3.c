
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* write_reg ) (struct e1000_hw*,int,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int DEBUGOUT (char*) ;
 int E1000_SUCCESS ;
 int stub1 (struct e1000_hw*,int,int) ;
 int stub10 (struct e1000_hw*,int,int) ;
 int stub11 (struct e1000_hw*,int,int) ;
 int stub12 (struct e1000_hw*,int,int) ;
 int stub13 (struct e1000_hw*,int,int) ;
 int stub14 (struct e1000_hw*,int,int) ;
 int stub15 (struct e1000_hw*,int,int) ;
 int stub16 (struct e1000_hw*,int,int) ;
 int stub17 (struct e1000_hw*,int,int) ;
 int stub18 (struct e1000_hw*,int,int) ;
 int stub19 (struct e1000_hw*,int,int) ;
 int stub2 (struct e1000_hw*,int,int) ;
 int stub20 (struct e1000_hw*,int,int) ;
 int stub21 (struct e1000_hw*,int,int) ;
 int stub22 (struct e1000_hw*,int,int) ;
 int stub23 (struct e1000_hw*,int,int) ;
 int stub24 (struct e1000_hw*,int,int) ;
 int stub25 (struct e1000_hw*,int,int) ;
 int stub26 (struct e1000_hw*,int,int) ;
 int stub27 (struct e1000_hw*,int,int) ;
 int stub28 (struct e1000_hw*,int,int) ;
 int stub29 (struct e1000_hw*,int,int) ;
 int stub3 (struct e1000_hw*,int,int) ;
 int stub30 (struct e1000_hw*,int,int) ;
 int stub31 (struct e1000_hw*,int,int) ;
 int stub32 (struct e1000_hw*,int,int) ;
 int stub4 (struct e1000_hw*,int,int) ;
 int stub5 (struct e1000_hw*,int,int) ;
 int stub6 (struct e1000_hw*,int,int) ;
 int stub7 (struct e1000_hw*,int,int) ;
 int stub8 (struct e1000_hw*,int,int) ;
 int stub9 (struct e1000_hw*,int,int) ;

s32 e1000_phy_init_script_igp3(struct e1000_hw *hw)
{
 DEBUGOUT("Running IGP 3 PHY init script\n");



 hw->phy.ops.write_reg(hw, 0x2F5B, 0x9018);

 hw->phy.ops.write_reg(hw, 0x2F52, 0x0000);

 hw->phy.ops.write_reg(hw, 0x2FB1, 0x8B24);

 hw->phy.ops.write_reg(hw, 0x2FB2, 0xF8F0);

 hw->phy.ops.write_reg(hw, 0x2010, 0x10B0);

 hw->phy.ops.write_reg(hw, 0x2011, 0x0000);

 hw->phy.ops.write_reg(hw, 0x20DD, 0x249A);

 hw->phy.ops.write_reg(hw, 0x20DE, 0x00D3);

 hw->phy.ops.write_reg(hw, 0x28B4, 0x04CE);

 hw->phy.ops.write_reg(hw, 0x2F70, 0x29E4);

 hw->phy.ops.write_reg(hw, 0x0000, 0x0140);

 hw->phy.ops.write_reg(hw, 0x1F30, 0x1606);

 hw->phy.ops.write_reg(hw, 0x1F31, 0xB814);

 hw->phy.ops.write_reg(hw, 0x1F35, 0x002A);

 hw->phy.ops.write_reg(hw, 0x1F3E, 0x0067);

 hw->phy.ops.write_reg(hw, 0x1F54, 0x0065);

 hw->phy.ops.write_reg(hw, 0x1F55, 0x002A);

 hw->phy.ops.write_reg(hw, 0x1F56, 0x002A);

 hw->phy.ops.write_reg(hw, 0x1F72, 0x3FB0);

 hw->phy.ops.write_reg(hw, 0x1F76, 0xC0FF);

 hw->phy.ops.write_reg(hw, 0x1F77, 0x1DEC);

 hw->phy.ops.write_reg(hw, 0x1F78, 0xF9EF);

 hw->phy.ops.write_reg(hw, 0x1F79, 0x0210);

 hw->phy.ops.write_reg(hw, 0x1895, 0x0003);

 hw->phy.ops.write_reg(hw, 0x1796, 0x0008);

 hw->phy.ops.write_reg(hw, 0x1798, 0xD008);



 hw->phy.ops.write_reg(hw, 0x1898, 0xD918);

 hw->phy.ops.write_reg(hw, 0x187A, 0x0800);



 hw->phy.ops.write_reg(hw, 0x0019, 0x008D);

 hw->phy.ops.write_reg(hw, 0x001B, 0x2080);

 hw->phy.ops.write_reg(hw, 0x0014, 0x0045);

 hw->phy.ops.write_reg(hw, 0x0000, 0x1340);

 return E1000_SUCCESS;
}
