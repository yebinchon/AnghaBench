
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dwc_hdmi_softc {int dummy; } ;


 int HDMI_A_HDCPCFG0 ;
 int HDMI_A_HDCPCFG0_RXDETECT_DISABLE ;
 int HDMI_A_HDCPCFG0_RXDETECT_MASK ;
 int HDMI_A_HDCPCFG1 ;
 int HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_DISABLE ;
 int HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK ;
 int HDMI_A_VIDPOLCFG ;
 int HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_HIGH ;
 int HDMI_A_VIDPOLCFG_DATAENPOL_MASK ;
 int RD1 (struct dwc_hdmi_softc*,int ) ;
 int WR1 (struct dwc_hdmi_softc*,int ,int ) ;

__attribute__((used)) static void
dwc_hdmi_tx_hdcp_config(struct dwc_hdmi_softc *sc)
{
 uint8_t de, val;

 de = HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_HIGH;


 val = RD1(sc, HDMI_A_HDCPCFG0);
 val &= ~HDMI_A_HDCPCFG0_RXDETECT_MASK;
 val |= HDMI_A_HDCPCFG0_RXDETECT_DISABLE;
 WR1(sc, HDMI_A_HDCPCFG0, val);


 val = RD1(sc, HDMI_A_VIDPOLCFG);
 val &= ~HDMI_A_VIDPOLCFG_DATAENPOL_MASK;
 val |= de;
 WR1(sc, HDMI_A_VIDPOLCFG, val);


 val = RD1(sc, HDMI_A_HDCPCFG1);
 val &= ~HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK;
 val |= HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_DISABLE;
 WR1(sc, HDMI_A_HDCPCFG1, val);
}
