
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_14__ {int vi_height; int vi_width; int vi_cwidth; int vi_cheight; int vi_mem_model; int vi_flags; } ;
typedef TYPE_1__ video_info_t ;
struct TYPE_15__ {int va_flags; TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;
typedef int uint8_t ;
struct machfb_softc {int sc_chip_id; int sc_ramdac_freq; int sc_chip_rev; int sc_node; char sc_height; char sc_width; char sc_depth; int sc_xmargin; int sc_ymargin; int sc_memsize; int sc_memtype; int sc_ref_freq; int sc_ref_div; int sc_mclk_fb_div; int sc_mem_freq; int sc_mclk_post_div; int sc_flags; int sc_cbwidth; int sc_font; } ;
typedef int phandle_t ;
typedef int buf ;
struct TYPE_17__ {int red; int green; int blue; } ;
struct TYPE_16__ {int chip_id; int ramdac_freq; } ;
struct TYPE_13__ {int width; int height; int data; } ;


 int ATI_MACH64_CT ;
 int ATI_MACH64_VT ;
 int ATI_RAGE_II ;
 int ATI_RAGE_XC_PCI ;
 int ATI_RAGE_XC_PCI66 ;
 int ATI_RAGE_XL_PCI ;
 int ATI_RAGE_XL_PCI66 ;
 scalar_t__ CLOCK_CNTL ;
 int CONFIG_CHIP_ID ;
 int CONFIG_STAT0 ;
 scalar_t__ DAC_DATA ;
 scalar_t__ DAC_MASK ;
 scalar_t__ DAC_RINDEX ;
 scalar_t__ DAC_WINDEX ;
 int ENXIO ;
 int MACHFB_CMAP_OFF ;
 int MACHFB_DRIVER_NAME ;
 int MACHFB_DSP ;
 int MCLK_FB_DIV ;
 int NBBY ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;
 int PLL_REF_DIV ;
 int V_ADP_BORDER ;
 int V_ADP_COLOR ;
 int V_ADP_INITIALIZED ;
 int V_ADP_MODECHANGE ;
 int V_ADP_PALETTE ;
 int V_ADP_REGISTERED ;
 int V_DISPLAY_ON ;
 int V_INFO_COLOR ;
 int V_INFO_MM_OTHER ;
 TYPE_12__ gallant12x22 ;
 int howmany (int,int ) ;
 int machfb_adjust_frame (int ,int ) ;
 int machfb_blank_display (TYPE_2__*,int ) ;
 int machfb_clear (TYPE_2__*) ;
 TYPE_9__* machfb_default_cmap ;
 int machfb_get_memsize (struct machfb_softc*) ;
 TYPE_5__* machfb_info ;
 int machfb_init_engine (struct machfb_softc*) ;
 int machfb_set_mode (TYPE_2__*,int ) ;
 int nitems (TYPE_5__*) ;
 int regr (struct machfb_softc*,int ) ;
 void* regrb (struct machfb_softc*,scalar_t__) ;
 int regwb (struct machfb_softc*,scalar_t__,int) ;
 void* strtol (char*,int *,int) ;
 int vid_init_struct (TYPE_2__*,int ,int,int) ;
 scalar_t__ vid_register (TYPE_2__*) ;

__attribute__((used)) static int
machfb_init(int unit, video_adapter_t *adp, int flags)
{
 struct machfb_softc *sc;
 phandle_t options;
 video_info_t *vi;
 char buf[32];
 int i;
 uint8_t dac_mask, dac_rindex, dac_windex;

 sc = (struct machfb_softc *)adp;
 vi = &adp->va_info;

 if ((regr(sc, CONFIG_CHIP_ID) & 0xffff) != sc->sc_chip_id)
  return (ENXIO);

 sc->sc_ramdac_freq = 0;
 for (i = 0; i < nitems(machfb_info); i++) {
  if (sc->sc_chip_id == machfb_info[i].chip_id) {
   sc->sc_ramdac_freq = machfb_info[i].ramdac_freq;
   break;
  }
 }
 if (sc->sc_ramdac_freq == 0)
  return (ENXIO);
 if (sc->sc_chip_id == ATI_RAGE_II && sc->sc_chip_rev & 0x07)
  sc->sc_ramdac_freq = 170000;

 vid_init_struct(adp, MACHFB_DRIVER_NAME, -1, unit);

 if (OF_getprop(sc->sc_node, "height", &sc->sc_height,
     sizeof(sc->sc_height)) == -1)
  return (ENXIO);
 if (OF_getprop(sc->sc_node, "width", &sc->sc_width,
     sizeof(sc->sc_width)) == -1)
  return (ENXIO);
 if (OF_getprop(sc->sc_node, "depth", &sc->sc_depth,
     sizeof(sc->sc_depth)) == -1)
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
 sc->sc_cbwidth = howmany(vi->vi_cwidth, NBBY);
 sc->sc_xmargin = (sc->sc_width - (vi->vi_width * vi->vi_cwidth)) / 2;
 sc->sc_ymargin = (sc->sc_height - (vi->vi_height * vi->vi_cheight)) / 2;

 if (sc->sc_chip_id != ATI_MACH64_CT &&
     !((sc->sc_chip_id == ATI_MACH64_VT ||
     sc->sc_chip_id == ATI_RAGE_II) &&
     (sc->sc_chip_rev & 0x07) == 0))
  sc->sc_flags |= MACHFB_DSP;

 sc->sc_memsize = machfb_get_memsize(sc);
 if (sc->sc_memsize == 8192)

  sc->sc_memsize -= 4;
 sc->sc_memtype = regr(sc, CONFIG_STAT0) & 0x07;

 if ((sc->sc_chip_id >= ATI_RAGE_XC_PCI66 &&
     sc->sc_chip_id <= ATI_RAGE_XL_PCI66) ||
     (sc->sc_chip_id >= ATI_RAGE_XL_PCI &&
     sc->sc_chip_id <= ATI_RAGE_XC_PCI))
  sc->sc_ref_freq = 29498;
 else
  sc->sc_ref_freq = 14318;

 regwb(sc, CLOCK_CNTL + 1, PLL_REF_DIV << 2);
 sc->sc_ref_div = regrb(sc, CLOCK_CNTL + 2);
 regwb(sc, CLOCK_CNTL + 1, MCLK_FB_DIV << 2);
 sc->sc_mclk_fb_div = regrb(sc, CLOCK_CNTL + 2);
 sc->sc_mem_freq = (2 * sc->sc_ref_freq * sc->sc_mclk_fb_div) /
     (sc->sc_ref_div * 2);
 sc->sc_mclk_post_div = (sc->sc_mclk_fb_div * 2 * sc->sc_ref_freq) /
     (sc->sc_mem_freq * sc->sc_ref_div);

 machfb_init_engine(sc);



 machfb_set_mode(adp, 0);
 dac_rindex = regrb(sc, DAC_RINDEX);
 dac_windex = regrb(sc, DAC_WINDEX);
 dac_mask = regrb(sc, DAC_MASK);
 regwb(sc, DAC_MASK, 0xff);
 regwb(sc, DAC_WINDEX, MACHFB_CMAP_OFF);
 for (i = 0; i < 16; i++) {
  regwb(sc, DAC_DATA, machfb_default_cmap[i].red);
  regwb(sc, DAC_DATA, machfb_default_cmap[i].green);
  regwb(sc, DAC_DATA, machfb_default_cmap[i].blue);
 }
 regwb(sc, DAC_MASK, dac_mask);
 regwb(sc, DAC_RINDEX, dac_rindex);
 regwb(sc, DAC_WINDEX, dac_windex);

 machfb_blank_display(adp, V_DISPLAY_ON);
 machfb_clear(adp);






 adp->va_flags |= V_ADP_COLOR | V_ADP_MODECHANGE | V_ADP_PALETTE |
     V_ADP_BORDER | V_ADP_INITIALIZED;
 if (vid_register(adp) < 0)
  return (ENXIO);
 adp->va_flags |= V_ADP_REGISTERED;

 return (0);
}
