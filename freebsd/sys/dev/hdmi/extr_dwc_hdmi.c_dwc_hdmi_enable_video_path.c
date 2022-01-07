
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dwc_hdmi_softc {int dummy; } ;


 int HDMI_FC_CH0PREAM ;
 int HDMI_FC_CH1PREAM ;
 int HDMI_FC_CH2PREAM ;
 int HDMI_FC_CTRLDUR ;
 int HDMI_FC_EXCTRLDUR ;
 int HDMI_FC_EXCTRLSPAC ;
 int HDMI_MC_CLKDIS ;
 int HDMI_MC_CLKDIS_CECCLK_DISABLE ;
 int HDMI_MC_CLKDIS_PIXELCLK_DISABLE ;
 int HDMI_MC_CLKDIS_TMDSCLK_DISABLE ;
 int RD1 (struct dwc_hdmi_softc*,int ) ;
 int WR1 (struct dwc_hdmi_softc*,int ,int) ;

__attribute__((used)) static void
dwc_hdmi_enable_video_path(struct dwc_hdmi_softc *sc)
{
 uint8_t clkdis;





 WR1(sc, HDMI_FC_CTRLDUR, 12);
 WR1(sc, HDMI_FC_EXCTRLDUR, 32);
 WR1(sc, HDMI_FC_EXCTRLSPAC, 1);





 WR1(sc, HDMI_FC_CH0PREAM, 0x0B);
 WR1(sc, HDMI_FC_CH1PREAM, 0x16);
 WR1(sc, HDMI_FC_CH2PREAM, 0x21);


 clkdis = RD1(sc, HDMI_MC_CLKDIS) & HDMI_MC_CLKDIS_CECCLK_DISABLE;
 clkdis |= ~HDMI_MC_CLKDIS_CECCLK_DISABLE;


 clkdis &= ~HDMI_MC_CLKDIS_PIXELCLK_DISABLE;
 WR1(sc, HDMI_MC_CLKDIS, clkdis);

 clkdis &= ~HDMI_MC_CLKDIS_TMDSCLK_DISABLE;
 WR1(sc, HDMI_MC_CLKDIS, clkdis);
}
