
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int vi_height; int vi_width; int vi_cwidth; int vi_cheight; int vi_mem_model; int vi_flags; } ;
typedef TYPE_1__ video_info_t ;
struct TYPE_11__ {int va_flags; TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;
struct creator_softc {int sc_node; char sc_height; char sc_width; int sc_xmargin; int sc_ymargin; int sc_flags; int sc_font; } ;
typedef int phandle_t ;
typedef int buf ;
struct TYPE_12__ {int width; int height; int data; } ;


 int CREATOR_AFB ;
 int CREATOR_CURINV ;
 int CREATOR_DRIVER_NAME ;
 int CREATOR_PAC1 ;
 int ENXIO ;
 int FFB_DAC ;
 int FFB_DAC_CFG_DID ;
 int FFB_DAC_CFG_DID_PNUM ;
 int FFB_DAC_CFG_UCTRL ;
 int FFB_DAC_TYPE ;
 int FFB_DAC_UCTRL_MANREV ;
 int FFB_DAC_VALUE ;
 int FFB_READ (struct creator_softc*,int ,int ) ;
 int FFB_WRITE (struct creator_softc*,int ,int ,int ) ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;
 int V_ADP_BORDER ;
 int V_ADP_COLOR ;
 int V_ADP_INITIALIZED ;
 int V_ADP_MODECHANGE ;
 int V_ADP_REGISTERED ;
 int V_DISPLAY_ON ;
 int V_INFO_COLOR ;
 int V_INFO_MM_OTHER ;
 int creator_blank_display (TYPE_2__*,int ) ;
 int creator_clear (TYPE_2__*) ;
 int creator_set_mode (TYPE_2__*,int ) ;
 TYPE_5__ gallant12x22 ;
 void* strtol (char*,int *,int) ;
 int vid_init_struct (TYPE_2__*,int ,int,int) ;
 scalar_t__ vid_register (TYPE_2__*) ;

__attribute__((used)) static int
creator_init(int unit, video_adapter_t *adp, int flags)
{
 struct creator_softc *sc;
 phandle_t options;
 video_info_t *vi;
 char buf[sizeof("screen-#columns")];

 sc = (struct creator_softc *)adp;
 vi = &adp->va_info;

 vid_init_struct(adp, CREATOR_DRIVER_NAME, -1, unit);

 if (OF_getprop(sc->sc_node, "height", &sc->sc_height,
     sizeof(sc->sc_height)) == -1)
  return (ENXIO);
 if (OF_getprop(sc->sc_node, "width", &sc->sc_width,
     sizeof(sc->sc_width)) == -1)
  return (ENXIO);
 if ((options = OF_finddevice("/options")) == -1)
  return (ENXIO);
 if (OF_getprop(options, "screen-#rows", buf, sizeof(buf)) == -1)
  return (ENXIO);
 vi->vi_height = strtol(buf, ((void*)0), 10);
 if (OF_getprop(options, "screen-#columns", buf, sizeof(buf)) == -1)
  return (ENXIO);
 vi->vi_width = strtol(buf, ((void*)0), 10);
 vi->vi_cwidth = gallant12x22.width;
 vi->vi_cheight = gallant12x22.height;
 vi->vi_flags = V_INFO_COLOR;
 vi->vi_mem_model = V_INFO_MM_OTHER;

 sc->sc_font = gallant12x22.data;
 sc->sc_xmargin = (sc->sc_width - (vi->vi_width * vi->vi_cwidth)) / 2;
 sc->sc_ymargin = (sc->sc_height - (vi->vi_height * vi->vi_cheight)) / 2;

 creator_set_mode(adp, 0);

 if (!(sc->sc_flags & CREATOR_AFB)) {
  FFB_WRITE(sc, FFB_DAC, FFB_DAC_TYPE, FFB_DAC_CFG_DID);
  if (((FFB_READ(sc, FFB_DAC, FFB_DAC_VALUE) &
      FFB_DAC_CFG_DID_PNUM) >> 12) != 0x236e) {
   sc->sc_flags |= CREATOR_PAC1;
   FFB_WRITE(sc, FFB_DAC, FFB_DAC_TYPE, FFB_DAC_CFG_UCTRL);
   if (((FFB_READ(sc, FFB_DAC, FFB_DAC_VALUE) &
       FFB_DAC_UCTRL_MANREV) >> 8) <= 2)
    sc->sc_flags |= CREATOR_CURINV;
  }
 }

 creator_blank_display(adp, V_DISPLAY_ON);
 creator_clear(adp);







 adp->va_flags |= V_ADP_COLOR | V_ADP_MODECHANGE | V_ADP_BORDER |
     V_ADP_INITIALIZED;
 if (vid_register(adp) < 0)
  return (ENXIO);
 adp->va_flags |= V_ADP_REGISTERED;

 return (0);
}
