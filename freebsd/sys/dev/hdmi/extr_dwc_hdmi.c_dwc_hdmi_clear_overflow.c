
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dwc_hdmi_softc {int dummy; } ;


 int HDMI_FC_INVIDCONF ;
 int HDMI_MC_SWRSTZ ;
 scalar_t__ HDMI_MC_SWRSTZ_TMDSSWRST_REQ ;
 int RD1 (struct dwc_hdmi_softc*,int ) ;
 int WR1 (struct dwc_hdmi_softc*,int ,int ) ;

__attribute__((used)) static void
dwc_hdmi_clear_overflow(struct dwc_hdmi_softc *sc)
{
 int count;
 uint8_t val;


 WR1(sc, HDMI_MC_SWRSTZ, (uint8_t)~HDMI_MC_SWRSTZ_TMDSSWRST_REQ);

 val = RD1(sc, HDMI_FC_INVIDCONF);

 for (count = 0 ; count < 4 ; count++)
  WR1(sc, HDMI_FC_INVIDCONF, val);
}
