
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t term_color_t ;
struct vt_device {struct vga_softc* vd_softc; } ;
struct vga_softc {size_t vga_curbg; int vga_curfg; } ;


 int MEM_READ1 (struct vga_softc*,int ) ;
 int MEM_WRITE1 (struct vga_softc*,int ,int) ;
 int REG_WRITE1 (struct vga_softc*,int ,int ) ;
 int VGA_GC_ADDRESS ;
 int VGA_GC_DATA ;
 int VGA_GC_SET_RESET ;
 int VT_VGA_BGCOLOR_OFFSET ;
 int * cons_to_vga_colors ;
 int vga_setwmode (struct vt_device*,int) ;

__attribute__((used)) static inline void
vga_setbg(struct vt_device *vd, term_color_t color)
{
 struct vga_softc *sc = vd->vd_softc;

 vga_setwmode(vd, 3);

 if (sc->vga_curbg == color)
  return;

 REG_WRITE1(sc, VGA_GC_ADDRESS, VGA_GC_SET_RESET);
 REG_WRITE1(sc, VGA_GC_DATA, cons_to_vga_colors[color]);





 MEM_WRITE1(sc, VT_VGA_BGCOLOR_OFFSET, 0xff);





 MEM_READ1(sc, VT_VGA_BGCOLOR_OFFSET);

 sc->vga_curbg = color;





 sc->vga_curfg = 0xff;
}
