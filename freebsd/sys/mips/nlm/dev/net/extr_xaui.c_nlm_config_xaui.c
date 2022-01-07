
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NETIOR_XGMAC_RX_PFC_EN_POS ;
 int NETIOR_XGMAC_STATS_EN_POS ;
 int NETIOR_XGMAC_TX_PAUSE_POS ;
 int NETIOR_XGMAC_TX_PFC_EN_POS ;
 int NETIOR_XGMAC_VLAN_DC_POS ;
 int XAUI_CONFIG0 (int) ;
 int XAUI_CONFIG1 (int) ;
 int XAUI_CONFIG_GENFCS ;
 int XAUI_CONFIG_LENCHK ;
 int XAUI_CONFIG_PAD_64 ;
 int XAUI_NETIOR_XGMAC_CTRL1 (int) ;
 int XAUI_NETIOR_XGMAC_CTRL2 (int) ;
 int XAUI_NETIOR_XGMAC_CTRL3 (int) ;
 int nlm_config_xaui_mtu (int ,int,int,int) ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_config_xaui(uint64_t nae_base, int nblock,
    int max_tx_frame_sz, int max_rx_frame_sz, int vlan_pri_en)
{
 uint32_t val;

 val = nlm_read_nae_reg(nae_base, XAUI_NETIOR_XGMAC_CTRL1(nblock));
 val &= ~(0x1 << 11);
 nlm_write_nae_reg(nae_base, XAUI_NETIOR_XGMAC_CTRL1(nblock), val);

 val = nlm_read_nae_reg(nae_base, XAUI_NETIOR_XGMAC_CTRL1(nblock));
 val &= ~(0x3 << 11);
 nlm_write_nae_reg(nae_base, XAUI_NETIOR_XGMAC_CTRL1(nblock), val);
 nlm_write_nae_reg(nae_base, XAUI_CONFIG0(nblock), 0xffffffff);
 nlm_write_nae_reg(nae_base, XAUI_CONFIG0(nblock), 0);


 val = 0x000010A8;
 val |= XAUI_CONFIG_LENCHK;
 val |= XAUI_CONFIG_GENFCS;
 val |= XAUI_CONFIG_PAD_64;
 nlm_write_nae_reg(nae_base, XAUI_CONFIG1(nblock), val);


 nlm_config_xaui_mtu(nae_base, nblock, max_tx_frame_sz,
     max_rx_frame_sz);


 val = nlm_read_nae_reg(nae_base, XAUI_NETIOR_XGMAC_CTRL1(nblock));
 val |= (0x1 << NETIOR_XGMAC_VLAN_DC_POS);
 val |= (0x1 << NETIOR_XGMAC_STATS_EN_POS);
 if (vlan_pri_en) {
  val |= (0x1 << NETIOR_XGMAC_TX_PFC_EN_POS);
  val |= (0x1 << NETIOR_XGMAC_RX_PFC_EN_POS);
  val |= (0x1 << NETIOR_XGMAC_TX_PAUSE_POS);
 } else {
  val &= ~(0x1 << NETIOR_XGMAC_TX_PFC_EN_POS);
  val |= (0x1 << NETIOR_XGMAC_TX_PAUSE_POS);
 }
 nlm_write_nae_reg(nae_base, XAUI_NETIOR_XGMAC_CTRL1(nblock), val);

 if (vlan_pri_en)
  val = 0xF1230000;
 else
  val = 0x0000F123;
 nlm_write_nae_reg(nae_base, XAUI_NETIOR_XGMAC_CTRL2(nblock), val);


 val = nlm_read_nae_reg(nae_base, XAUI_NETIOR_XGMAC_CTRL3(nblock));
 val &= ~(0x1f << 10);
 val |= ~(15 << 10);
 nlm_write_nae_reg(nae_base, XAUI_NETIOR_XGMAC_CTRL3(nblock), val);
}
