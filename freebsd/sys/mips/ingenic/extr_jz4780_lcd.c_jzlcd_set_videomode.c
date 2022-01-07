
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct videomode {int htotal; int hsync_end; int hsync_start; int hdisplay; int vtotal; int vsync_end; int vsync_start; int vdisplay; int dot_clock; } ;
struct lcd_frame_descriptor {int dummy; } ;
struct jzlcd_softc {int fdesc_paddr; int dev; int clk_pix; int fdesc_map; int fdesc_tag; } ;


 int BUS_DMASYNC_PREWRITE ;
 int DOT_CLOCK_TO_HZ (int ) ;
 int LCDCFG ;
 int LCDCFG_24 ;
 int LCDCFG_CLSM ;
 int LCDCFG_NEWDES ;
 int LCDCFG_PCP ;
 int LCDCFG_PSM ;
 int LCDCFG_RECOVER ;
 int LCDCFG_REVM ;
 int LCDCFG_SPLM ;
 int LCDCTRL ;
 int LCDCTRL_BST ;
 int LCDCTRL_BST_64 ;
 int LCDCTRL_OFUM ;
 int LCDDA0 ;
 int LCDDA1 ;
 int LCDDAH ;
 int LCDDAH_HDE_SHIFT ;
 int LCDDAH_HDS_SHIFT ;
 int LCDDAV ;
 int LCDDAV_VDE_SHIFT ;
 int LCDDAV_VDS_SHIFT ;
 int LCDHSYNC ;
 int LCDPCFG ;
 int LCDRGBC ;
 int LCDRGBC_RGBFMT ;
 int LCDSTATE ;
 int LCDVAT ;
 int LCDVAT_HT_SHIFT ;
 int LCDVAT_VT_SHIFT ;
 int LCDVSYNC ;
 int LCD_READ (struct jzlcd_softc*,int ) ;
 int LCD_WRITE (struct jzlcd_softc*,int ,int) ;
 int PCFG_MAGIC ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int clk_set_freq (int ,int ,int ) ;
 int device_printf (int ,char*,int ) ;
 int jzlcd_setup_descriptor (struct jzlcd_softc*,struct videomode const*,int) ;

__attribute__((used)) static int
jzlcd_set_videomode(struct jzlcd_softc *sc, const struct videomode *mode)
{
 u_int hbp, hfp, hsw, vbp, vfp, vsw;
 u_int hds, hde, ht, vds, vde, vt;
 uint32_t ctrl;
 int error;

 hbp = mode->htotal - mode->hsync_end;
 hfp = mode->hsync_start - mode->hdisplay;
 hsw = mode->hsync_end - mode->hsync_start;
 vbp = mode->vtotal - mode->vsync_end;
 vfp = mode->vsync_start - mode->vdisplay;
 vsw = mode->vsync_end - mode->vsync_start;

 hds = hsw + hbp;
 hde = hds + mode->hdisplay;
 ht = hde + hfp;

 vds = vsw + vbp;
 vde = vds + mode->vdisplay;
 vt = vde + vfp;


 LCD_WRITE(sc, LCDVAT,
     (ht << LCDVAT_HT_SHIFT) | (vt << LCDVAT_VT_SHIFT));
 LCD_WRITE(sc, LCDDAH,
     (hds << LCDDAH_HDS_SHIFT) | (hde << LCDDAH_HDE_SHIFT));
 LCD_WRITE(sc, LCDDAV,
     (vds << LCDDAV_VDS_SHIFT) | (vde << LCDDAV_VDE_SHIFT));
 LCD_WRITE(sc, LCDHSYNC, hsw);
 LCD_WRITE(sc, LCDVSYNC, vsw);


 LCD_WRITE(sc, LCDCFG, LCDCFG_NEWDES | LCDCFG_RECOVER | LCDCFG_24 |
     LCDCFG_PSM | LCDCFG_CLSM | LCDCFG_SPLM | LCDCFG_REVM | LCDCFG_PCP);
 ctrl = LCD_READ(sc, LCDCTRL);
 ctrl &= ~LCDCTRL_BST;
 ctrl |= LCDCTRL_BST_64 | LCDCTRL_OFUM;
 LCD_WRITE(sc, LCDCTRL, ctrl);
 LCD_WRITE(sc, LCDPCFG, PCFG_MAGIC);
 LCD_WRITE(sc, LCDRGBC, LCDRGBC_RGBFMT);


 LCD_WRITE(sc, LCDSTATE, 0);


 jzlcd_setup_descriptor(sc, mode, 0);
 jzlcd_setup_descriptor(sc, mode, 1);
 bus_dmamap_sync(sc->fdesc_tag, sc->fdesc_map, BUS_DMASYNC_PREWRITE);


 LCD_WRITE(sc, LCDDA0, sc->fdesc_paddr
     + sizeof(struct lcd_frame_descriptor));
 LCD_WRITE(sc, LCDDA1, sc->fdesc_paddr);


 error = clk_set_freq(sc->clk_pix, DOT_CLOCK_TO_HZ(mode->dot_clock), 0);
 if (error != 0) {
  device_printf(sc->dev, "failed to set pixel clock to %u Hz\n",
      DOT_CLOCK_TO_HZ(mode->dot_clock));
  return (error);
 }

 return (0);
}
