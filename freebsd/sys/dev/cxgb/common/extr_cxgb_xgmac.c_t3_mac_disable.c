
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmac {scalar_t__ offset; int * adapter; scalar_t__ txen; int ext_port; scalar_t__ multiport; } ;
typedef int adapter_t ;


 scalar_t__ A_XGM_RESET_CTRL ;
 scalar_t__ A_XGM_RX_CTRL ;
 scalar_t__ A_XGM_TX_CTRL ;
 int F_PCS_RESET_ ;
 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 int msleep (int) ;
 int t3_set_reg_field (int *,scalar_t__,int ,int ) ;
 int t3_vsc7323_disable (int *,int ,int) ;
 int t3_write_reg (int *,scalar_t__,int) ;
 int xgm_reset_ctrl (struct cmac*) ;

int t3_mac_disable(struct cmac *mac, int which)
{
 adapter_t *adap = mac->adapter;

 if (mac->multiport)
  return t3_vsc7323_disable(adap, mac->ext_port, which);

 if (which & MAC_DIRECTION_TX) {
  t3_write_reg(adap, A_XGM_TX_CTRL + mac->offset, 0);
  mac->txen = 0;
 }
 if (which & MAC_DIRECTION_RX) {
  int val = xgm_reset_ctrl(mac);

  t3_set_reg_field(mac->adapter, A_XGM_RESET_CTRL + mac->offset,
     F_PCS_RESET_, 0);
  msleep(100);
  t3_write_reg(adap, A_XGM_RX_CTRL + mac->offset, 0);
  t3_write_reg(mac->adapter, A_XGM_RESET_CTRL + mac->offset, val);
 }
 return 0;
}
