
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_long ;
typedef size_t term_color_t ;
struct TYPE_4__ {unsigned int tp_row; unsigned int tp_col; } ;
struct TYPE_5__ {TYPE_1__ tr_end; } ;
struct vt_window {TYPE_2__ vw_draw_area; } ;
struct vt_device {struct creatorfb_softc* vd_softc; } ;
struct TYPE_6__ {unsigned int fb_stride; int * fb_cmap; } ;
struct creatorfb_softc {TYPE_3__ fb; int memh; int memt; } ;


 int bus_space_write_4 (int ,int ,int,int ) ;

__attribute__((used)) static void
creatorfb_bitblt_bitmap(struct vt_device *vd, const struct vt_window *vw,
    const uint8_t *pattern, const uint8_t *mask,
    unsigned int width, unsigned int height,
    unsigned int x, unsigned int y, term_color_t fg, term_color_t bg)
{
 struct creatorfb_softc *sc = vd->vd_softc;
 u_long line;
 uint32_t fgc, bgc;
 int c, l;
 uint8_t b, m;

 fgc = sc->fb.fb_cmap[fg];
 bgc = sc->fb.fb_cmap[bg];
 b = m = 0;

 line = (sc->fb.fb_stride * y) + 4*x;
 for (l = 0;
     l < height && y + l < vw->vw_draw_area.tr_end.tp_row;
     l++) {
  for (c = 0;
      c < width && x + c < vw->vw_draw_area.tr_end.tp_col;
      c++) {
   if (c % 8 == 0)
    b = *pattern++;
   else
    b <<= 1;
   if (mask != ((void*)0)) {
    if (c % 8 == 0)
     m = *mask++;
    else
     m <<= 1;

    if ((m & 0x80) == 0)
     continue;
   }
   bus_space_write_4(sc->memt, sc->memh, line + 4*c,
       (b & 0x80) ? fgc : bgc);
  }
  line += sc->fb.fb_stride;
 }
}
