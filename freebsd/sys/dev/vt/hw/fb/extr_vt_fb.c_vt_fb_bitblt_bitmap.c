
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t term_color_t ;
struct TYPE_3__ {unsigned int tp_row; unsigned int tp_col; } ;
struct TYPE_4__ {TYPE_1__ tr_end; } ;
struct vt_window {TYPE_2__ vw_draw_area; } ;
struct vt_device {scalar_t__ vd_transpose; struct fb_info* vd_softc; } ;
struct fb_info {int* fb_cmap; int fb_flags; scalar_t__ fb_vbase; unsigned int fb_stride; } ;


 int FBTYPE_GET_BYTESPP (struct fb_info*) ;
 int FB_FLAG_NOWRITE ;
 int KASSERT (int,char*) ;
 int vt_fb_mem_wr1 (struct fb_info*,int,int) ;
 int vt_fb_mem_wr2 (struct fb_info*,int,int) ;
 int vt_fb_mem_wr4 (struct fb_info*,int,int) ;

void
vt_fb_bitblt_bitmap(struct vt_device *vd, const struct vt_window *vw,
    const uint8_t *pattern, const uint8_t *mask,
    unsigned int width, unsigned int height,
    unsigned int x, unsigned int y, term_color_t fg, term_color_t bg)
{
 struct fb_info *info;
 uint32_t fgc, bgc, cc, o;
 int bpp, bpl, xi, yi;
 int bit, byte;

 info = vd->vd_softc;
 bpp = FBTYPE_GET_BYTESPP(info);
 fgc = info->fb_cmap[fg];
 bgc = info->fb_cmap[bg];
 bpl = (width + 7) / 8;

 if (info->fb_flags & FB_FLAG_NOWRITE)
  return;

 KASSERT((info->fb_vbase != 0), ("Unmapped framebuffer"));


 if (y + height > vw->vw_draw_area.tr_end.tp_row) {
  if (y >= vw->vw_draw_area.tr_end.tp_row)
   return;
  height = vw->vw_draw_area.tr_end.tp_row - y;
 }
 if (x + width > vw->vw_draw_area.tr_end.tp_col) {
  if (x >= vw->vw_draw_area.tr_end.tp_col)
   return;
  width = vw->vw_draw_area.tr_end.tp_col - x;
 }
 for (yi = 0; yi < height; yi++) {
  for (xi = 0; xi < width; xi++) {
   byte = yi * bpl + xi / 8;
   bit = 0x80 >> (xi % 8);

   if (mask != ((void*)0) && (mask[byte] & bit) == 0)
    continue;
   o = (y + yi) * info->fb_stride + (x + xi) * bpp;
   o += vd->vd_transpose;
   cc = pattern[byte] & bit ? fgc : bgc;

   switch(bpp) {
   case 1:
    vt_fb_mem_wr1(info, o, cc);
    break;
   case 2:
    vt_fb_mem_wr2(info, o, cc);
    break;
   case 3:

    vt_fb_mem_wr1(info, o, (cc >> 16) & 0xff);
    vt_fb_mem_wr1(info, o + 1, (cc >> 8) & 0xff);
    vt_fb_mem_wr1(info, o + 2, cc & 0xff);
    break;
   case 4:
    vt_fb_mem_wr4(info, o, cc);
    break;
   default:

    break;
   }
  }
 }
}
