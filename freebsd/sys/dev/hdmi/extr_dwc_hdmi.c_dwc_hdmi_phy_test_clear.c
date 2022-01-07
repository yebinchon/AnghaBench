
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;
struct dwc_hdmi_softc {int dummy; } ;


 int HDMI_PHY_TST0 ;
 unsigned char HDMI_PHY_TST0_TSTCLR_MASK ;
 unsigned char HDMI_PHY_TST0_TSTCLR_OFFSET ;
 unsigned char RD1 (struct dwc_hdmi_softc*,int ) ;
 int WR1 (struct dwc_hdmi_softc*,int ,unsigned char) ;

__attribute__((used)) static inline void
dwc_hdmi_phy_test_clear(struct dwc_hdmi_softc *sc, unsigned char bit)
{
 uint8_t val;

 val = RD1(sc, HDMI_PHY_TST0);
 val &= ~HDMI_PHY_TST0_TSTCLR_MASK;
 val |= (bit << HDMI_PHY_TST0_TSTCLR_OFFSET) &
  HDMI_PHY_TST0_TSTCLR_MASK;
 WR1(sc, HDMI_PHY_TST0, val);
}
