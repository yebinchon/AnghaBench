
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int term_color_t ;
struct vt_device {struct vga_softc* vd_softc; } ;
struct vga_softc {int dummy; } ;


 int MEM_WRITE1 (struct vga_softc*,unsigned int,int const) ;
 unsigned int VT_VGA_WIDTH ;
 int vga_setbg (struct vt_device*,int ) ;
 int vga_setfg (struct vt_device*,int ) ;

__attribute__((used)) static void
vga_bitblt_pixels_block_2colors(struct vt_device *vd, const uint8_t *masks,
    term_color_t fg, term_color_t bg,
    unsigned int x, unsigned int y, unsigned int height)
{
 unsigned int i, offset;
 struct vga_softc *sc;
 vga_setbg(vd, bg);
 vga_setfg(vd, fg);

 sc = vd->vd_softc;
 offset = (VT_VGA_WIDTH * y + x) / 8;

 for (i = 0; i < height; ++i, offset += VT_VGA_WIDTH / 8) {
  MEM_WRITE1(sc, offset, masks[i]);
 }
}
