
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;





 int SGMII_MAC_CONF1 (int,int) ;
 int SGMII_MAC_CONF2 (int,int) ;
 int SGMII_NET_IFACE_CTRL (int,int) ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_nae_setup_mac(uint64_t nae_base, int nblock, int iface, int reset,
    int rx_en, int tx_en, int speed, int duplex)
{
 uint32_t mac_cfg1, mac_cfg2, netwk_inf;

 mac_cfg1 = nlm_read_nae_reg(nae_base,
     SGMII_MAC_CONF1(nblock,iface));
 mac_cfg2 = nlm_read_nae_reg(nae_base,
     SGMII_MAC_CONF2(nblock,iface));
 netwk_inf = nlm_read_nae_reg(nae_base,
     SGMII_NET_IFACE_CTRL(nblock, iface));

 mac_cfg1 &= ~(0x1 << 31);
 mac_cfg1 &= ~(0x1 << 2);
 mac_cfg1 &= ~(0x1);
 mac_cfg2 &= ~(0x3 << 8);
 mac_cfg2 &= ~(0x1);
 netwk_inf &= ~(0x1 << 2);
 netwk_inf &= ~(0x3);

 switch (speed) {
 case 129:
  netwk_inf |= 0x0;
  mac_cfg2 |= (0x1 << 8);
  break;
 case 128:
  netwk_inf |= 0x1;
  mac_cfg2 |= (0x1 << 8);
  break;
 default:
  netwk_inf |= 0x2;
  mac_cfg2 |= (0x2 << 8);
  break;
 }

 if (reset)
  mac_cfg1 |= (0x1 << 31);

 if (rx_en)
  mac_cfg1 |= (0x1 << 2);

        nlm_write_nae_reg(nae_base,
     SGMII_NET_IFACE_CTRL(nblock, iface),
     netwk_inf);

 if (tx_en) {
  mac_cfg1 |= 0x1;
  netwk_inf |= (0x1 << 2);
 }

 switch (duplex) {
 case 130:

  break;
 default:
  mac_cfg2 |= 0x1;
 }

 nlm_write_nae_reg(nae_base, SGMII_MAC_CONF1(nblock, iface), mac_cfg1);
 nlm_write_nae_reg(nae_base, SGMII_MAC_CONF2(nblock, iface), mac_cfg2);
 nlm_write_nae_reg(nae_base, SGMII_NET_IFACE_CTRL(nblock, iface),
     netwk_inf);
}
