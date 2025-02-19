
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int flags; int hdisplay; int vdisplay; int htotal; int vtotal; int hsync_start; int vsync_start; int hsync_end; int vsync_end; } ;
struct dwc_hdmi_softc {scalar_t__ sc_has_audio; TYPE_1__ sc_mode; } ;


 int HDMI_FC_HSYNCINDELAY0 ;
 int HDMI_FC_HSYNCINDELAY1 ;
 int HDMI_FC_HSYNCINWIDTH0 ;
 int HDMI_FC_HSYNCINWIDTH1 ;
 int HDMI_FC_INHACTV0 ;
 int HDMI_FC_INHACTV1 ;
 int HDMI_FC_INHBLANK0 ;
 int HDMI_FC_INHBLANK1 ;
 int HDMI_FC_INVACTV0 ;
 int HDMI_FC_INVACTV1 ;
 int HDMI_FC_INVBLANK ;
 int HDMI_FC_INVIDCONF ;
 int HDMI_FC_INVIDCONF_DE_IN_POLARITY_ACTIVE_HIGH ;
 int HDMI_FC_INVIDCONF_DVI_MODEZ_DVI_MODE ;
 int HDMI_FC_INVIDCONF_DVI_MODEZ_HDMI_MODE ;
 int HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_ACTIVE_HIGH ;
 int HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_ACTIVE_LOW ;
 int HDMI_FC_INVIDCONF_IN_I_P_INTERLACED ;
 int HDMI_FC_INVIDCONF_IN_I_P_PROGRESSIVE ;
 int HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_HIGH ;
 int HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_LOW ;
 int HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_ACTIVE_HIGH ;
 int HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_ACTIVE_LOW ;
 int HDMI_FC_VSYNCINDELAY ;
 int HDMI_FC_VSYNCINWIDTH ;
 int VID_INTERLACE ;
 int VID_PHSYNC ;
 int VID_PVSYNC ;
 int WR1 (struct dwc_hdmi_softc*,int ,int) ;

__attribute__((used)) static void
dwc_hdmi_av_composer(struct dwc_hdmi_softc *sc)
{
 uint8_t inv_val;
 int is_dvi;
 int hblank, vblank, hsync_len, hfp, vfp;


 inv_val = ((sc->sc_mode.flags & VID_PVSYNC) ?
  HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_ACTIVE_HIGH :
  HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_ACTIVE_LOW);

 inv_val |= ((sc->sc_mode.flags & VID_PHSYNC) ?
  HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_ACTIVE_HIGH :
  HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_ACTIVE_LOW);

 inv_val |= HDMI_FC_INVIDCONF_DE_IN_POLARITY_ACTIVE_HIGH;

 inv_val |= ((sc->sc_mode.flags & VID_INTERLACE) ?
   HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_HIGH :
   HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_LOW);

 inv_val |= ((sc->sc_mode.flags & VID_INTERLACE) ?
  HDMI_FC_INVIDCONF_IN_I_P_INTERLACED :
  HDMI_FC_INVIDCONF_IN_I_P_PROGRESSIVE);


 is_dvi = sc->sc_has_audio == 0;
 inv_val |= (is_dvi ?
  HDMI_FC_INVIDCONF_DVI_MODEZ_DVI_MODE :
  HDMI_FC_INVIDCONF_DVI_MODEZ_HDMI_MODE);

 WR1(sc, HDMI_FC_INVIDCONF, inv_val);


 WR1(sc, HDMI_FC_INHACTV1, sc->sc_mode.hdisplay >> 8);
 WR1(sc, HDMI_FC_INHACTV0, sc->sc_mode.hdisplay);


 WR1(sc, HDMI_FC_INVACTV1, sc->sc_mode.vdisplay >> 8);
 WR1(sc, HDMI_FC_INVACTV0, sc->sc_mode.vdisplay);


 hblank = sc->sc_mode.htotal - sc->sc_mode.hdisplay;
 WR1(sc, HDMI_FC_INHBLANK1, hblank >> 8);
 WR1(sc, HDMI_FC_INHBLANK0, hblank);


 vblank = sc->sc_mode.vtotal - sc->sc_mode.vdisplay;
 WR1(sc, HDMI_FC_INVBLANK, vblank);


 hfp = sc->sc_mode.hsync_start - sc->sc_mode.hdisplay;
 WR1(sc, HDMI_FC_HSYNCINDELAY1, hfp >> 8);
 WR1(sc, HDMI_FC_HSYNCINDELAY0, hfp);


 vfp = sc->sc_mode.vsync_start - sc->sc_mode.vdisplay;
 WR1(sc, HDMI_FC_VSYNCINDELAY, vfp);

 hsync_len = (sc->sc_mode.hsync_end - sc->sc_mode.hsync_start);

 WR1(sc, HDMI_FC_HSYNCINWIDTH1, hsync_len >> 8);
 WR1(sc, HDMI_FC_HSYNCINWIDTH0, hsync_len);


 WR1(sc, HDMI_FC_VSYNCINWIDTH, (sc->sc_mode.vsync_end - sc->sc_mode.vsync_start));
}
