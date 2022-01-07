
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct dwc_hdmi_softc {int sc_edid_info; } ;
typedef int device_t ;


 struct dwc_hdmi_softc* device_get_softc (int ) ;
 int edid_parse (int *,int *) ;
 int hdmi_edid_read (struct dwc_hdmi_softc*,int ,int **,int *) ;
 int memset (int *,int ,int) ;

int
dwc_hdmi_get_edid(device_t dev, uint8_t **edid, uint32_t *edid_len)
{
 struct dwc_hdmi_softc *sc;
 int error;

 sc = device_get_softc(dev);

 memset(&sc->sc_edid_info, 0, sizeof(sc->sc_edid_info));

 error = hdmi_edid_read(sc, 0, edid, edid_len);
 if (error != 0)
  return (error);

 edid_parse(*edid, &sc->sc_edid_info);

 return (0);
}
