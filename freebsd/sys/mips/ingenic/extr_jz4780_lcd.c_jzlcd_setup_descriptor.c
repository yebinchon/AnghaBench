
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct videomode {int hdisplay; int vdisplay; } ;
struct lcd_frame_descriptor {int id; int cmd; int cnum_pos; int dessize; scalar_t__ pw; scalar_t__ offs; int physaddr; scalar_t__ next; } ;
struct jzlcd_softc {int paddr; scalar_t__ fdesc_paddr; struct lcd_frame_descriptor* fdesc; } ;


 int FB_BPP ;
 int LCDCMD_FRM_EN ;
 int LCDDESSIZE_ALPHA ;
 int LCDDESSIZE_HEIGHT_SHIFT ;
 int LCDDESSIZE_WIDTH_SHIFT ;
 int LCDPOS_BPP01_18_24 ;
 int LCDPOS_COEF_BLE01_1 ;
 int LCDPOS_COEF_SLE01 ;
 int LCDPOS_PREMULTI01 ;

__attribute__((used)) static void
jzlcd_setup_descriptor(struct jzlcd_softc *sc, const struct videomode *mode,
    u_int desno)
{
 struct lcd_frame_descriptor *fdesc;
 int line_sz;


 line_sz = (mode->hdisplay * FB_BPP) >> 3;
 line_sz = ((line_sz + 3) & ~3) / 4;

 fdesc = sc->fdesc + desno;

 if (desno == 0)
  fdesc->next = sc->fdesc_paddr +
      sizeof(struct lcd_frame_descriptor);
 else
  fdesc->next = sc->fdesc_paddr;
 fdesc->physaddr = sc->paddr;
 fdesc->id = desno;
 fdesc->cmd = LCDCMD_FRM_EN | (line_sz * mode->vdisplay);
 fdesc->offs = 0;
 fdesc->pw = 0;
 fdesc->cnum_pos = LCDPOS_BPP01_18_24 |
     LCDPOS_PREMULTI01 |
     (desno == 0 ? LCDPOS_COEF_BLE01_1 : LCDPOS_COEF_SLE01);
 fdesc->dessize = LCDDESSIZE_ALPHA |
     ((mode->vdisplay - 1) << LCDDESSIZE_HEIGHT_SHIFT) |
     ((mode->hdisplay - 1) << LCDDESSIZE_WIDTH_SHIFT);
}
