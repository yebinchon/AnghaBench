
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* cfg_on_link_up; int write_i2c_byte; int read_i2c_byte; void* power_down; void* power_up; void* write_reg_page; void* write_reg_locked; void* write_reg; void* set_d3_lplu_state; void* set_d0_lplu_state; void* reset; void* release; void* read_reg_page; void* read_reg_locked; void* read_reg; int set_page; void* get_info; void* get_cable_length; void* get_cfg_done; void* force_speed_duplex; void* commit; void* check_reset_block; void* check_polarity; void* acquire; void* init_params; } ;
struct e1000_phy_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;


 int DEBUGFUNC (char*) ;
 void* e1000_null_lplu_state ;
 void* e1000_null_ops_generic ;
 void* e1000_null_phy_generic ;
 void* e1000_null_read_reg ;
 int e1000_null_set_page ;
 void* e1000_null_write_reg ;
 int e1000_read_i2c_byte_null ;
 int e1000_write_i2c_byte_null ;

void e1000_init_phy_ops_generic(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 DEBUGFUNC("e1000_init_phy_ops_generic");


 phy->ops.init_params = e1000_null_ops_generic;
 phy->ops.acquire = e1000_null_ops_generic;
 phy->ops.check_polarity = e1000_null_ops_generic;
 phy->ops.check_reset_block = e1000_null_ops_generic;
 phy->ops.commit = e1000_null_ops_generic;
 phy->ops.force_speed_duplex = e1000_null_ops_generic;
 phy->ops.get_cfg_done = e1000_null_ops_generic;
 phy->ops.get_cable_length = e1000_null_ops_generic;
 phy->ops.get_info = e1000_null_ops_generic;
 phy->ops.set_page = e1000_null_set_page;
 phy->ops.read_reg = e1000_null_read_reg;
 phy->ops.read_reg_locked = e1000_null_read_reg;
 phy->ops.read_reg_page = e1000_null_read_reg;
 phy->ops.release = e1000_null_phy_generic;
 phy->ops.reset = e1000_null_ops_generic;
 phy->ops.set_d0_lplu_state = e1000_null_lplu_state;
 phy->ops.set_d3_lplu_state = e1000_null_lplu_state;
 phy->ops.write_reg = e1000_null_write_reg;
 phy->ops.write_reg_locked = e1000_null_write_reg;
 phy->ops.write_reg_page = e1000_null_write_reg;
 phy->ops.power_up = e1000_null_phy_generic;
 phy->ops.power_down = e1000_null_phy_generic;
 phy->ops.read_i2c_byte = e1000_read_i2c_byte_null;
 phy->ops.write_i2c_byte = e1000_write_i2c_byte_null;
 phy->ops.cfg_on_link_up = e1000_null_ops_generic;
}
