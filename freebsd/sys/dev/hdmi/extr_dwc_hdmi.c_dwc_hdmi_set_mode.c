
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc_hdmi_softc {int sc_has_audio; } ;


 int dwc_hdmi_av_composer (struct dwc_hdmi_softc*) ;
 int dwc_hdmi_clear_overflow (struct dwc_hdmi_softc*) ;
 int dwc_hdmi_configure_audio (struct dwc_hdmi_softc*) ;
 int dwc_hdmi_disable_overflow_interrupts (struct dwc_hdmi_softc*) ;
 int dwc_hdmi_enable_video_path (struct dwc_hdmi_softc*) ;
 int dwc_hdmi_phy_init (struct dwc_hdmi_softc*) ;
 int dwc_hdmi_tx_hdcp_config (struct dwc_hdmi_softc*) ;
 int dwc_hdmi_video_packetize (struct dwc_hdmi_softc*) ;
 int dwc_hdmi_video_sample (struct dwc_hdmi_softc*) ;

__attribute__((used)) static int
dwc_hdmi_set_mode(struct dwc_hdmi_softc *sc)
{


 sc->sc_has_audio = 1;

 dwc_hdmi_disable_overflow_interrupts(sc);
 dwc_hdmi_av_composer(sc);
 dwc_hdmi_phy_init(sc);
 dwc_hdmi_enable_video_path(sc);
 dwc_hdmi_configure_audio(sc);

 dwc_hdmi_video_packetize(sc);

 dwc_hdmi_video_sample(sc);
 dwc_hdmi_tx_hdcp_config(sc);
 dwc_hdmi_clear_overflow(sc);

 return (0);
}
