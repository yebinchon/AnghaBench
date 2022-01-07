
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int edid_ext_block_count; } ;
struct dwc_hdmi_softc {int sc_has_audio; int sc_dev; TYPE_1__ sc_edid_info; } ;


 size_t CEA_DTD ;
 int DTD_BASIC_AUDIO ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;
 scalar_t__ dwc_hdmi_detect_hdmi_vsdb (int*) ;
 scalar_t__ hdmi_edid_read (struct dwc_hdmi_softc*,int,int**,int *) ;

__attribute__((used)) static void
dwc_hdmi_detect_hdmi(struct dwc_hdmi_softc *sc)
{
 uint8_t *edid;
 uint32_t edid_len;
 int block;

 sc->sc_has_audio = 0;


 for (block = 1; block <= sc->sc_edid_info.edid_ext_block_count;
     block++) {
  if (hdmi_edid_read(sc, block, &edid, &edid_len) != 0)
   return;
  if (dwc_hdmi_detect_hdmi_vsdb(edid) != 0) {
   if (bootverbose)
    device_printf(sc->sc_dev,
        "enabling audio support\n");
   sc->sc_has_audio =
       (edid[CEA_DTD] & DTD_BASIC_AUDIO) != 0;
   return;
  }
 }
}
