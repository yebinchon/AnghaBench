
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;




 int SGMII_MAC_CONF1 (int,int) ;
 int SGMII_NET_IFACE_CTRL (int,int) ;

 int XAUI_CONFIG1 (int) ;
 int XAUI_CONFIG_RFEN ;
 int XAUI_CONFIG_TFEN ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_mac_enable(uint64_t nae_base, int nblock, int port_type, int port)
{
 uint32_t mac_cfg1, xaui_cfg;
 uint32_t netwk_inf;
 int iface = port & 0x3;

 switch(port_type) {
 case 129:
  netwk_inf = nlm_read_nae_reg(nae_base,
      SGMII_NET_IFACE_CTRL(nblock, iface));
  nlm_write_nae_reg(nae_base,
      SGMII_NET_IFACE_CTRL(nblock, iface),
      netwk_inf |
      (1 << 2));
  mac_cfg1 = nlm_read_nae_reg(nae_base,
      SGMII_MAC_CONF1(nblock, iface));
  nlm_write_nae_reg(nae_base,
      SGMII_MAC_CONF1(nblock, iface),
      mac_cfg1 |
      (1 << 2) |
      1);
  break;
 case 128:
  xaui_cfg = nlm_read_nae_reg(nae_base,
      XAUI_CONFIG1(nblock));
  nlm_write_nae_reg(nae_base,
      XAUI_CONFIG1(nblock),
      xaui_cfg |
      XAUI_CONFIG_TFEN |
      XAUI_CONFIG_RFEN);
  break;
 case 130:
  break;
 }
}
