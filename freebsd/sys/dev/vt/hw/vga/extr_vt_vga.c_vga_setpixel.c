
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term_color_t ;
struct vt_device {int vd_flags; } ;


 int VDF_TEXTMODE ;
 int VT_VGA_WIDTH ;
 int vga_bitblt_put (struct vt_device*,int,int ,int) ;

__attribute__((used)) static void
vga_setpixel(struct vt_device *vd, int x, int y, term_color_t color)
{

 if (vd->vd_flags & VDF_TEXTMODE)
  return;

 vga_bitblt_put(vd, (y * VT_VGA_WIDTH / 8) + (x / 8), color,
     0x80 >> (x % 8));
}
