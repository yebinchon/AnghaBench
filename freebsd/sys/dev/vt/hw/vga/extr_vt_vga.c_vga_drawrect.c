
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term_color_t ;
struct vt_device {int vd_flags; } ;


 int VDF_TEXTMODE ;
 int vga_setpixel (struct vt_device*,int,int,int ) ;

__attribute__((used)) static void
vga_drawrect(struct vt_device *vd, int x1, int y1, int x2, int y2, int fill,
    term_color_t color)
{
 int x, y;

 if (vd->vd_flags & VDF_TEXTMODE)
  return;

 for (y = y1; y <= y2; y++) {
  if (fill || (y == y1) || (y == y2)) {
   for (x = x1; x <= x2; x++)
    vga_setpixel(vd, x, y, color);
  } else {
   vga_setpixel(vd, x1, y, color);
   vga_setpixel(vd, x2, y, color);
  }
 }
}
