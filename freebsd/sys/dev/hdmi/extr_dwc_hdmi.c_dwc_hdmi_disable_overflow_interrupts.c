
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc_hdmi_softc {int dummy; } ;


 int HDMI_FC_MASK2 ;
 int HDMI_FC_MASK2_HIGH_PRI ;
 int HDMI_FC_MASK2_LOW_PRI ;
 int HDMI_IH_MUTE_FC_STAT2 ;
 int HDMI_IH_MUTE_FC_STAT2_OVERFLOW_MASK ;
 int WR1 (struct dwc_hdmi_softc*,int ,int) ;

__attribute__((used)) static void
dwc_hdmi_disable_overflow_interrupts(struct dwc_hdmi_softc *sc)
{
 WR1(sc, HDMI_IH_MUTE_FC_STAT2, HDMI_IH_MUTE_FC_STAT2_OVERFLOW_MASK);
 WR1(sc, HDMI_FC_MASK2,
     HDMI_FC_MASK2_LOW_PRI | HDMI_FC_MASK2_HIGH_PRI);
}
