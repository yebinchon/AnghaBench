
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dwc_hdmi_softc {int dummy; } ;


 int HDMI_PHY_CONF0 ;
 int HDMI_PHY_CONF0_GEN2_TXPWRON_MASK ;
 int HDMI_PHY_CONF0_GEN2_TXPWRON_OFFSET ;
 int RD1 (struct dwc_hdmi_softc*,int ) ;
 int WR1 (struct dwc_hdmi_softc*,int ,int) ;

__attribute__((used)) static void
dwc_hdmi_phy_gen2_txpwron(struct dwc_hdmi_softc *sc, uint8_t enable)
{
 uint8_t reg;

 reg = RD1(sc, HDMI_PHY_CONF0);
 reg &= ~HDMI_PHY_CONF0_GEN2_TXPWRON_MASK;
 reg |= (enable << HDMI_PHY_CONF0_GEN2_TXPWRON_OFFSET);
 WR1(sc, HDMI_PHY_CONF0, reg);
}
