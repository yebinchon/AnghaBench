
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int eee_disable; } ;
struct TYPE_8__ {TYPE_3__ _82575; } ;
struct TYPE_6__ {scalar_t__ media_type; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_4__ dev_spec; TYPE_2__ phy; TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_EEER ;
 int E1000_EEER_LPI_FC ;
 int E1000_EEER_RX_LPI_EN ;
 int E1000_EEER_TX_LPI_EN ;
 int E1000_EEE_SU ;
 int E1000_EEE_SU_LPI_CLK_STP ;
 int E1000_IPCNFG ;
 int E1000_IPCNFG_EEE_100M_AN ;
 int E1000_IPCNFG_EEE_1G_AN ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_i350 ;
 scalar_t__ e1000_media_type_copper ;

s32 e1000_set_eee_i350(struct e1000_hw *hw, bool adv1G, bool adv100M)
{
 u32 ipcnfg, eeer;

 DEBUGFUNC("e1000_set_eee_i350");

 if ((hw->mac.type < e1000_i350) ||
     (hw->phy.media_type != e1000_media_type_copper))
  goto out;
 ipcnfg = E1000_READ_REG(hw, E1000_IPCNFG);
 eeer = E1000_READ_REG(hw, E1000_EEER);


 if (!(hw->dev_spec._82575.eee_disable)) {
  u32 eee_su = E1000_READ_REG(hw, E1000_EEE_SU);

  if (adv100M)
   ipcnfg |= E1000_IPCNFG_EEE_100M_AN;
  else
   ipcnfg &= ~E1000_IPCNFG_EEE_100M_AN;

  if (adv1G)
   ipcnfg |= E1000_IPCNFG_EEE_1G_AN;
  else
   ipcnfg &= ~E1000_IPCNFG_EEE_1G_AN;

  eeer |= (E1000_EEER_TX_LPI_EN | E1000_EEER_RX_LPI_EN |
    E1000_EEER_LPI_FC);


  if (eee_su & E1000_EEE_SU_LPI_CLK_STP)
   DEBUGOUT("LPI Clock Stop Bit should not be set!\n");
 } else {
  ipcnfg &= ~(E1000_IPCNFG_EEE_1G_AN | E1000_IPCNFG_EEE_100M_AN);
  eeer &= ~(E1000_EEER_TX_LPI_EN | E1000_EEER_RX_LPI_EN |
     E1000_EEER_LPI_FC);
 }
 E1000_WRITE_REG(hw, E1000_IPCNFG, ipcnfg);
 E1000_WRITE_REG(hw, E1000_EEER, eeer);
 E1000_READ_REG(hw, E1000_IPCNFG);
 E1000_READ_REG(hw, E1000_EEER);
out:

 return E1000_SUCCESS;
}
