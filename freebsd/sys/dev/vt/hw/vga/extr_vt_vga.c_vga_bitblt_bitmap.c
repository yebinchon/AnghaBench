
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int term_color_t ;
struct vt_window {int dummy; } ;
struct vt_device {unsigned int vd_width; unsigned int vd_height; } ;


 unsigned int VT_VGA_PIXELS_BLOCK ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int rounddown (unsigned int,unsigned int) ;
 unsigned int roundup (unsigned int,unsigned int) ;
 int vga_bitblt_pixels_block_2colors (struct vt_device*,scalar_t__*,int ,int ,unsigned int,unsigned int,int) ;
 int vga_copy_bitmap_portion (scalar_t__*,int *,scalar_t__ const*,scalar_t__ const*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int ,int,int ,int ,int ) ;

__attribute__((used)) static void
vga_bitblt_bitmap(struct vt_device *vd, const struct vt_window *vw,
    const uint8_t *pattern, const uint8_t *mask,
    unsigned int width, unsigned int height,
    unsigned int x, unsigned int y, term_color_t fg, term_color_t bg)
{
 unsigned int x1, y1, x2, y2, i, j, src_x, dst_x, x_count;
 uint8_t pattern_2colors;


 x1 = rounddown(x, VT_VGA_PIXELS_BLOCK);
 y1 = y;

 x2 = roundup(x + width, VT_VGA_PIXELS_BLOCK);
 y2 = y + height;
 x2 = min(x2, vd->vd_width - 1);
 y2 = min(y2, vd->vd_height - 1);

 for (j = y1; j < y2; ++j) {
  src_x = 0;
  dst_x = x - x1;
  x_count = VT_VGA_PIXELS_BLOCK - dst_x;

  for (i = x1; i < x2; i += VT_VGA_PIXELS_BLOCK) {
   pattern_2colors = 0;

   vga_copy_bitmap_portion(
       &pattern_2colors, ((void*)0),
       pattern, mask, width,
       src_x, dst_x, x_count,
       j - y1, 0, 1, fg, bg, 0);

   vga_bitblt_pixels_block_2colors(vd,
       &pattern_2colors, fg, bg,
       i, j, 1);

   src_x += x_count;
   dst_x = (dst_x + x_count) % VT_VGA_PIXELS_BLOCK;
   x_count = min(width - src_x, VT_VGA_PIXELS_BLOCK);
  }
 }
}
