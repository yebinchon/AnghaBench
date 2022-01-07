
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dwc_hdmi_softc {int dummy; } ;


 int HDMI_TX_BCBDATA0 ;
 int HDMI_TX_BCBDATA1 ;
 int HDMI_TX_GYDATA0 ;
 int HDMI_TX_GYDATA1 ;
 int HDMI_TX_INSTUFFING ;
 int HDMI_TX_INSTUFFING_BDBDATA_STUFFING_ENABLE ;
 int HDMI_TX_INSTUFFING_GYDATA_STUFFING_ENABLE ;
 int HDMI_TX_INSTUFFING_RCRDATA_STUFFING_ENABLE ;
 int HDMI_TX_INVID0 ;
 int HDMI_TX_INVID0_INTERNAL_DE_GENERATOR_DISABLE ;
 int HDMI_TX_INVID0_VIDEO_MAPPING_MASK ;
 int HDMI_TX_INVID0_VIDEO_MAPPING_OFFSET ;
 int HDMI_TX_RCRDATA0 ;
 int HDMI_TX_RCRDATA1 ;
 int WR1 (struct dwc_hdmi_softc*,int ,int) ;

__attribute__((used)) static void
dwc_hdmi_video_sample(struct dwc_hdmi_softc *sc)
{
 int color_format;
 uint8_t val;

 color_format = 0x01;
 val = HDMI_TX_INVID0_INTERNAL_DE_GENERATOR_DISABLE |
  ((color_format << HDMI_TX_INVID0_VIDEO_MAPPING_OFFSET) &
  HDMI_TX_INVID0_VIDEO_MAPPING_MASK);
 WR1(sc, HDMI_TX_INVID0, val);


 val = HDMI_TX_INSTUFFING_BDBDATA_STUFFING_ENABLE |
  HDMI_TX_INSTUFFING_RCRDATA_STUFFING_ENABLE |
  HDMI_TX_INSTUFFING_GYDATA_STUFFING_ENABLE;
 WR1(sc, HDMI_TX_INSTUFFING, val);
 WR1(sc, HDMI_TX_GYDATA0, 0x0);
 WR1(sc, HDMI_TX_GYDATA1, 0x0);
 WR1(sc, HDMI_TX_RCRDATA0, 0x0);
 WR1(sc, HDMI_TX_RCRDATA1, 0x0);
 WR1(sc, HDMI_TX_BCBDATA0, 0x0);
 WR1(sc, HDMI_TX_BCBDATA1, 0x0);
}
