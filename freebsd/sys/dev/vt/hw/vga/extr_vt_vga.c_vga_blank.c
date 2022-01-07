
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int term_color_t ;
struct vt_device {struct vga_softc* vd_softc; } ;
struct vga_softc {int dummy; } ;


 int MEM_WRITE1 (struct vga_softc*,scalar_t__,int) ;
 scalar_t__ VT_VGA_MEMSIZE ;
 int vga_setfg (struct vt_device*,int ) ;

__attribute__((used)) static void
vga_blank(struct vt_device *vd, term_color_t color)
{
 struct vga_softc *sc = vd->vd_softc;
 u_int ofs;

 vga_setfg(vd, color);
 for (ofs = 0; ofs < VT_VGA_MEMSIZE; ofs++)
  MEM_WRITE1(sc, ofs, 0xff);
}
