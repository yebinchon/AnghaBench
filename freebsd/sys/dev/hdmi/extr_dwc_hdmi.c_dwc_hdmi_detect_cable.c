
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dwc_hdmi_softc {int sc_mode_hook; int sc_dev; } ;


 int EVENTHANDLER_INVOKE (int ,int ,int ) ;
 int HDMI_EVENT_CONNECTED ;
 int HDMI_IH_PHY_STAT0 ;
 int HDMI_IH_PHY_STAT0_HPD ;
 int RD1 (struct dwc_hdmi_softc*,int ) ;
 int config_intrhook_disestablish (int *) ;
 int hdmi_event ;

__attribute__((used)) static void
dwc_hdmi_detect_cable(void *arg)
{
 struct dwc_hdmi_softc *sc;
 uint32_t stat;

 sc = arg;

 stat = RD1(sc, HDMI_IH_PHY_STAT0);
 if ((stat & HDMI_IH_PHY_STAT0_HPD) != 0) {
  EVENTHANDLER_INVOKE(hdmi_event, sc->sc_dev,
      HDMI_EVENT_CONNECTED);
 }


 config_intrhook_disestablish(&sc->sc_mode_hook);
}
