
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int A_MAC_PORT_CFG2 ;
 int A_MAC_PORT_MAGIC_MACID_HI ;
 int A_MAC_PORT_MAGIC_MACID_LO ;
 int A_XGMAC_PORT_CFG2 ;
 int A_XGMAC_PORT_MAGIC_MACID_HI ;
 int A_XGMAC_PORT_MAGIC_MACID_LO ;
 int F_MAGICEN ;
 int PORT_REG (unsigned int,int ) ;
 int T5_PORT_REG (unsigned int,int ) ;
 int V_MAGICEN (int ) ;
 scalar_t__ is_t4 (struct adapter*) ;
 int t4_set_reg_field (struct adapter*,int ,int ,int ) ;
 int t4_write_reg (struct adapter*,int ,int const) ;

void t4_wol_magic_enable(struct adapter *adap, unsigned int port,
    const u8 *addr)
{
 u32 mag_id_reg_l, mag_id_reg_h, port_cfg_reg;

 if (is_t4(adap)) {
  mag_id_reg_l = PORT_REG(port, A_XGMAC_PORT_MAGIC_MACID_LO);
  mag_id_reg_h = PORT_REG(port, A_XGMAC_PORT_MAGIC_MACID_HI);
  port_cfg_reg = PORT_REG(port, A_XGMAC_PORT_CFG2);
 } else {
  mag_id_reg_l = T5_PORT_REG(port, A_MAC_PORT_MAGIC_MACID_LO);
  mag_id_reg_h = T5_PORT_REG(port, A_MAC_PORT_MAGIC_MACID_HI);
  port_cfg_reg = T5_PORT_REG(port, A_MAC_PORT_CFG2);
 }

 if (addr) {
  t4_write_reg(adap, mag_id_reg_l,
        (addr[2] << 24) | (addr[3] << 16) |
        (addr[4] << 8) | addr[5]);
  t4_write_reg(adap, mag_id_reg_h,
        (addr[0] << 8) | addr[1]);
 }
 t4_set_reg_field(adap, port_cfg_reg, F_MAGICEN,
    V_MAGICEN(addr != ((void*)0)));
}
