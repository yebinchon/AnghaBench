
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dwc_hdmi_softc* ich_arg; int ich_func; } ;
struct dwc_hdmi_softc {int * sc_edid; TYPE_1__ sc_mode_hook; int sc_dev; int sc_edid_len; } ;
typedef int device_t ;


 int EDID_LENGTH ;
 int ENOMEM ;
 int HDMI_DESIGN_ID ;
 int HDMI_IH_PHY_STAT0 ;
 int HDMI_IH_PHY_STAT0_HPD ;
 int HDMI_PHY_POL0 ;
 int HDMI_PHY_POL0_HPD ;
 int HDMI_PRODUCT_ID0 ;
 int HDMI_PRODUCT_ID1 ;
 int HDMI_REVISION_ID ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int RD1 (struct dwc_hdmi_softc*,int ) ;
 int WR1 (struct dwc_hdmi_softc*,int ,int ) ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 struct dwc_hdmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ,int ,int ,int ) ;
 int dwc_hdmi_detect_cable ;
 int free (int *,int ) ;
 int * malloc (int ,int ,int) ;

int
dwc_hdmi_init(device_t dev)
{
 struct dwc_hdmi_softc *sc;
 int err;

 sc = device_get_softc(dev);
 err = 0;

 sc->sc_edid = malloc(EDID_LENGTH, M_DEVBUF, M_WAITOK | M_ZERO);
 sc->sc_edid_len = EDID_LENGTH;

 device_printf(sc->sc_dev, "HDMI controller %02x:%02x:%02x:%02x\n",
     RD1(sc, HDMI_DESIGN_ID), RD1(sc, HDMI_REVISION_ID),
     RD1(sc, HDMI_PRODUCT_ID0), RD1(sc, HDMI_PRODUCT_ID1));

 WR1(sc, HDMI_PHY_POL0, HDMI_PHY_POL0_HPD);
 WR1(sc, HDMI_IH_PHY_STAT0, HDMI_IH_PHY_STAT0_HPD);

 sc->sc_mode_hook.ich_func = dwc_hdmi_detect_cable;
 sc->sc_mode_hook.ich_arg = sc;
 if (config_intrhook_establish(&sc->sc_mode_hook) != 0) {
  err = ENOMEM;
  goto out;
 }

out:

 if (err != 0) {
  free(sc->sc_edid, M_DEVBUF);
  sc->sc_edid = ((void*)0);
 }

 return (err);
}
