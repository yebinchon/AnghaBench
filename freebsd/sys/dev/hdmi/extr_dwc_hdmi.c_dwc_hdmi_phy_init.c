
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc_hdmi_softc {int dummy; } ;


 int dwc_hdmi_phy_configure (struct dwc_hdmi_softc*) ;
 int dwc_hdmi_phy_enable_power (struct dwc_hdmi_softc*,int ) ;
 int dwc_hdmi_phy_enable_tmds (struct dwc_hdmi_softc*,int ) ;
 int dwc_hdmi_phy_sel_data_en_pol (struct dwc_hdmi_softc*,int) ;
 int dwc_hdmi_phy_sel_interface_control (struct dwc_hdmi_softc*,int ) ;

__attribute__((used)) static void
dwc_hdmi_phy_init(struct dwc_hdmi_softc *sc)
{
 int i;


 for (i = 0 ; i < 2 ; i++) {
  dwc_hdmi_phy_sel_data_en_pol(sc, 1);
  dwc_hdmi_phy_sel_interface_control(sc, 0);
  dwc_hdmi_phy_enable_tmds(sc, 0);
  dwc_hdmi_phy_enable_power(sc, 0);


  dwc_hdmi_phy_configure(sc);
 }
}
