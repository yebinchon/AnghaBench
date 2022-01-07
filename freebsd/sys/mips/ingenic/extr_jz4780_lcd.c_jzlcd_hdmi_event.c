
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct videomode {int vdisplay; int hdisplay; } ;
struct jzlcd_softc {int dev; } ;
struct edid_info {int dummy; } ;
typedef int device_t ;


 int FB_DEFAULT_H ;
 int FB_DEFAULT_REF ;
 int FB_DEFAULT_W ;
 int HDMI_GET_EDID (int ,int **,scalar_t__*) ;
 int HDMI_SET_VIDEOMODE (int ,struct videomode*) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int edid_parse (int *,struct edid_info*) ;
 int edid_print (struct edid_info*) ;
 int jzlcd_configure (struct jzlcd_softc*,struct videomode const*) ;
 struct videomode* jzlcd_find_mode (struct edid_info*) ;
 int jzlcd_start (struct jzlcd_softc*) ;
 int jzlcd_stop (struct jzlcd_softc*) ;
 struct videomode* pick_mode_by_ref (int ,int ,int ) ;

__attribute__((used)) static void
jzlcd_hdmi_event(void *arg, device_t hdmi_dev)
{
 const struct videomode *mode;
 struct videomode hdmi_mode;
 struct jzlcd_softc *sc;
 struct edid_info ei;
 uint8_t *edid;
 uint32_t edid_len;
 int error;

 sc = arg;
 edid = ((void*)0);
 edid_len = 0;
 mode = ((void*)0);

 error = HDMI_GET_EDID(hdmi_dev, &edid, &edid_len);
 if (error != 0) {
  device_printf(sc->dev, "failed to get EDID: %d\n", error);
 } else {
  error = edid_parse(edid, &ei);
  if (error != 0) {
   device_printf(sc->dev, "failed to parse EDID: %d\n",
       error);
  } else {
   if (bootverbose)
    edid_print(&ei);

   mode = jzlcd_find_mode(&ei);
  }
 }


 if (mode == ((void*)0))
  mode = pick_mode_by_ref(FB_DEFAULT_W, FB_DEFAULT_H,
      FB_DEFAULT_REF);

 if (mode == ((void*)0)) {
  device_printf(sc->dev, "failed to find usable video mode\n");
  return;
 }

 if (bootverbose)
  device_printf(sc->dev, "using %dx%d\n",
      mode->hdisplay, mode->vdisplay);


 jzlcd_stop(sc);


 error = jzlcd_configure(sc, mode);
 if (error != 0) {
  device_printf(sc->dev, "failed to configure FB: %d\n", error);
  return;
 }


 hdmi_mode = *mode;
 HDMI_SET_VIDEOMODE(hdmi_dev, &hdmi_mode);


 jzlcd_start(sc);
}
