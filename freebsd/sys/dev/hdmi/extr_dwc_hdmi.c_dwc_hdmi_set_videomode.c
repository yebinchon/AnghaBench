
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int dummy; } ;
struct dwc_hdmi_softc {int sc_mode; } ;
typedef int device_t ;


 struct dwc_hdmi_softc* device_get_softc (int ) ;
 int dwc_hdmi_detect_hdmi (struct dwc_hdmi_softc*) ;
 int dwc_hdmi_set_mode (struct dwc_hdmi_softc*) ;
 int memcpy (int *,struct videomode const*,int) ;

int
dwc_hdmi_set_videomode(device_t dev, const struct videomode *mode)
{
 struct dwc_hdmi_softc *sc;

 sc = device_get_softc(dev);
 memcpy(&sc->sc_mode, mode, sizeof(*mode));

 dwc_hdmi_detect_hdmi(sc);

 dwc_hdmi_set_mode(sc);

 return (0);
}
