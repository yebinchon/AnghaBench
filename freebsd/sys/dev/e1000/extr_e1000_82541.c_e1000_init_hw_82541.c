
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_8__ {scalar_t__ (* setup_link ) (struct e1000_hw*) ;int (* clear_vfta ) (struct e1000_hw*) ;scalar_t__ (* id_led_init ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {scalar_t__ mta_reg_count; TYPE_4__ ops; int rar_entry_count; } ;
struct TYPE_6__ {scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int *) ;} ;
struct TYPE_7__ {TYPE_2__ ops; } ;
struct e1000_dev_spec_82541 {int spd_default; } ;
struct TYPE_5__ {struct e1000_dev_spec_82541 _82541; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ dev_spec; struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_MTA ;
 scalar_t__ E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_TXDCTL (int ) ;
 scalar_t__ E1000_TXDCTL_FULL_TX_DESC_WB ;
 scalar_t__ E1000_TXDCTL_WTHRESH ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,scalar_t__) ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,scalar_t__,int ) ;
 int IGP01E1000_GMII_FIFO ;
 int e1000_clear_hw_cntrs_82541 (struct e1000_hw*) ;
 int e1000_init_rx_addrs_generic (struct e1000_hw*,int ) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int *) ;
 int stub3 (struct e1000_hw*) ;
 scalar_t__ stub4 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_init_hw_82541(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 struct e1000_dev_spec_82541 *dev_spec = &hw->dev_spec._82541;
 u32 i, txdctl;
 s32 ret_val;

 DEBUGFUNC("e1000_init_hw_82541");


 ret_val = mac->ops.id_led_init(hw);
 if (ret_val) {
  DEBUGOUT("Error initializing identification LED\n");

 }


 ret_val = hw->phy.ops.read_reg(hw, IGP01E1000_GMII_FIFO,
           &dev_spec->spd_default);
 if (ret_val)
  goto out;


 DEBUGOUT("Initializing the IEEE VLAN\n");
 mac->ops.clear_vfta(hw);


 e1000_init_rx_addrs_generic(hw, mac->rar_entry_count);


 DEBUGOUT("Zeroing the MTA\n");
 for (i = 0; i < mac->mta_reg_count; i++) {
  E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, 0);






  E1000_WRITE_FLUSH(hw);
 }


 ret_val = mac->ops.setup_link(hw);

 txdctl = E1000_READ_REG(hw, E1000_TXDCTL(0));
 txdctl = (txdctl & ~E1000_TXDCTL_WTHRESH) |
    E1000_TXDCTL_FULL_TX_DESC_WB;
 E1000_WRITE_REG(hw, E1000_TXDCTL(0), txdctl);







 e1000_clear_hw_cntrs_82541(hw);

out:
 return ret_val;
}
