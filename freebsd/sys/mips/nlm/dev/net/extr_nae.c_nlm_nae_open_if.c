
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



 int NETIOR_XGMAC_STATS_CLR_POS ;

 int SGMII_MAC_CONF1 (int,int) ;
 int SGMII_MAC_CONF2 (int,int) ;
 int SGMII_NET_IFACE_CTRL (int,int) ;
 int SGMII_NET_IFACE_CTRL3 (int,int) ;

 int XAUI_NETIOR_XGMAC_CTRL1 (int) ;
 int nlm_nae_init_egress (int ) ;
 int nlm_nae_init_ingress (int ,int) ;
 int nlm_nae_set_ior_credit (int ,int,int) ;
 int nlm_read_nae_reg (int ,int) ;
 int nlm_write_nae_reg (int ,int,int) ;

int
nlm_nae_open_if(uint64_t nae_base, int nblock, int port_type,
    int port, uint32_t desc_size)
{
 uint32_t netwk_inf;
 uint32_t mac_cfg1, netior_ctrl3;
 int iface, iface_ctrl_reg, iface_ctrl3_reg, conf1_reg, conf2_reg;

 switch (port_type) {
 case 128:
  netwk_inf = nlm_read_nae_reg(nae_base,
      XAUI_NETIOR_XGMAC_CTRL1(nblock));
  netwk_inf |= (1 << NETIOR_XGMAC_STATS_CLR_POS);
  nlm_write_nae_reg(nae_base,
      XAUI_NETIOR_XGMAC_CTRL1(nblock), netwk_inf);

  nlm_nae_set_ior_credit(nae_base, 0xf << port, 0xf << port);
  break;

 case 130:
  nlm_nae_set_ior_credit(nae_base, 0xff << port, 0xff << port);
  break;

 case 129:
  nlm_nae_set_ior_credit(nae_base, 0x1 << port, 0);






  iface = port & 0x3;
  iface_ctrl_reg = SGMII_NET_IFACE_CTRL(nblock, iface);
  conf1_reg = SGMII_MAC_CONF1(nblock, iface);
  conf2_reg = SGMII_MAC_CONF2(nblock, iface);

  netwk_inf = nlm_read_nae_reg(nae_base, iface_ctrl_reg);
  netwk_inf &= 0x7ffffff;
  netwk_inf |= (port << 27);
  nlm_write_nae_reg(nae_base, iface_ctrl_reg, netwk_inf);


  netwk_inf &= 0xfffff7ff;
  nlm_write_nae_reg(nae_base, iface_ctrl_reg, netwk_inf);


  mac_cfg1 = nlm_read_nae_reg(nae_base, conf1_reg);
  nlm_write_nae_reg(nae_base, conf1_reg,
      mac_cfg1 |
      (1U << 31) |
      (1 << 2) |
      (1));


  nlm_write_nae_reg(nae_base,
      conf2_reg,
      (0x7 << 12) |
      (0x2 << 8) |
      (0x1 << 2) |
      (0x1));


  mac_cfg1 = nlm_read_nae_reg(nae_base, conf1_reg);
  nlm_write_nae_reg(nae_base, conf1_reg, mac_cfg1 & ~(1U << 31));


  iface_ctrl3_reg = SGMII_NET_IFACE_CTRL3(nblock, iface);
  netior_ctrl3 = nlm_read_nae_reg(nae_base, iface_ctrl3_reg);
  nlm_write_nae_reg(nae_base, iface_ctrl3_reg,
      netior_ctrl3 & ~(1 << 6));


  mac_cfg1 = nlm_read_nae_reg(nae_base, conf1_reg);
  nlm_write_nae_reg(nae_base, conf1_reg, mac_cfg1 & ~(0x5));
  netwk_inf = nlm_read_nae_reg(nae_base, iface_ctrl_reg);
  nlm_write_nae_reg(nae_base, iface_ctrl_reg,
      netwk_inf & ~(0x1 << 2));


  netwk_inf = nlm_read_nae_reg(nae_base, iface_ctrl_reg);
  nlm_write_nae_reg(nae_base, iface_ctrl_reg,
      netwk_inf | (1 << 15));


  netwk_inf = nlm_read_nae_reg(nae_base, iface_ctrl_reg);
  nlm_write_nae_reg(nae_base, iface_ctrl_reg,
      (netwk_inf & ~(1 << 15)) | (1 << 16));


  mac_cfg1 = nlm_read_nae_reg(nae_base, conf1_reg);
  nlm_write_nae_reg(nae_base, conf1_reg,
      mac_cfg1 | (0x3 << 4));
  break;
 }

 nlm_nae_init_ingress(nae_base, desc_size);
 nlm_nae_init_egress(nae_base);

 return (0);
}
