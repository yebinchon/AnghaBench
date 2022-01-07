
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ar8327_pad_cfg {int mode; int txclk_delay_sel; int rxclk_delay_sel; int txclk_delay_en; int rxclk_delay_en; int txclk_sel; int rxclk_sel; int pipe_rxclk_sel; int sgmii_delay_en; } ;






 int AR8327_PAD_MAC_GMII_EN ;
 int AR8327_PAD_MAC_GMII_RXCLK_SEL ;
 int AR8327_PAD_MAC_GMII_TXCLK_SEL ;
 int AR8327_PAD_MAC_MII_EN ;
 int AR8327_PAD_MAC_MII_RXCLK_SEL ;
 int AR8327_PAD_MAC_MII_TXCLK_SEL ;



 int AR8327_PAD_PHYX_GMII_EN ;
 int AR8327_PAD_PHYX_MII_EN ;
 int AR8327_PAD_PHYX_RGMII_EN ;

 int AR8327_PAD_PHY_GMII_EN ;
 int AR8327_PAD_PHY_GMII_PIPE_RXCLK_SEL ;
 int AR8327_PAD_PHY_GMII_RXCLK_SEL ;
 int AR8327_PAD_PHY_GMII_TXCLK_SEL ;

 int AR8327_PAD_PHY_MII_EN ;
 int AR8327_PAD_PHY_MII_RXCLK_SEL ;
 int AR8327_PAD_PHY_MII_TXCLK_SEL ;

 int AR8327_PAD_RGMII_EN ;
 int AR8327_PAD_RGMII_RXCLK_DELAY_EN ;
 int AR8327_PAD_RGMII_RXCLK_DELAY_SEL_S ;
 int AR8327_PAD_RGMII_TXCLK_DELAY_EN ;
 int AR8327_PAD_RGMII_TXCLK_DELAY_SEL_S ;
 int AR8327_PAD_SGMII_DELAY_EN ;
 int AR8327_PAD_SGMII_EN ;

__attribute__((used)) static uint32_t
ar8327_get_pad_cfg(struct ar8327_pad_cfg *cfg)
{
 uint32_t t;

 if (!cfg)
  return (0);

 t = 0;
 switch (cfg->mode) {
 case 131:
  break;

 case 136:
  t = AR8327_PAD_MAC_MII_EN;
  if (cfg->rxclk_sel)
   t |= AR8327_PAD_MAC_MII_RXCLK_SEL;
  if (cfg->txclk_sel)
   t |= AR8327_PAD_MAC_MII_TXCLK_SEL;
  break;

 case 137:
  t = AR8327_PAD_MAC_GMII_EN;
  if (cfg->rxclk_sel)
   t |= AR8327_PAD_MAC_GMII_RXCLK_SEL;
  if (cfg->txclk_sel)
   t |= AR8327_PAD_MAC_GMII_TXCLK_SEL;
  break;

 case 132:
  t = AR8327_PAD_SGMII_EN;







  t |= cfg->txclk_delay_sel << AR8327_PAD_RGMII_TXCLK_DELAY_SEL_S;
  t |= cfg->rxclk_delay_sel << AR8327_PAD_RGMII_RXCLK_DELAY_SEL_S;
  if (cfg->rxclk_delay_en)
   t |= AR8327_PAD_RGMII_RXCLK_DELAY_EN;
  if (cfg->txclk_delay_en)
   t |= AR8327_PAD_RGMII_TXCLK_DELAY_EN;

  if (cfg->sgmii_delay_en)
   t |= AR8327_PAD_SGMII_DELAY_EN;

  break;

 case 134:
  t = AR8327_PAD_PHY_MII_EN;
  if (cfg->rxclk_sel)
   t |= AR8327_PAD_PHY_MII_RXCLK_SEL;
  if (cfg->txclk_sel)
   t |= AR8327_PAD_PHY_MII_TXCLK_SEL;
  break;

 case 135:
  t = AR8327_PAD_PHY_GMII_EN;
  if (cfg->pipe_rxclk_sel)
   t |= AR8327_PAD_PHY_GMII_PIPE_RXCLK_SEL;
  if (cfg->rxclk_sel)
   t |= AR8327_PAD_PHY_GMII_RXCLK_SEL;
  if (cfg->txclk_sel)
   t |= AR8327_PAD_PHY_GMII_TXCLK_SEL;
  break;

 case 133:
  t = AR8327_PAD_RGMII_EN;
  t |= cfg->txclk_delay_sel << AR8327_PAD_RGMII_TXCLK_DELAY_SEL_S;
  t |= cfg->rxclk_delay_sel << AR8327_PAD_RGMII_RXCLK_DELAY_SEL_S;
  if (cfg->rxclk_delay_en)
   t |= AR8327_PAD_RGMII_RXCLK_DELAY_EN;
  if (cfg->txclk_delay_en)
   t |= AR8327_PAD_RGMII_TXCLK_DELAY_EN;
  break;

 case 130:
  t = AR8327_PAD_PHYX_GMII_EN;
  break;

 case 128:
  t = AR8327_PAD_PHYX_RGMII_EN;
  break;

 case 129:
  t = AR8327_PAD_PHYX_MII_EN;
  break;
 }

 return (t);
}
