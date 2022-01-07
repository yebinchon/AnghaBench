
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_6__ {int flags; int base; scalar_t__ height; } ;
struct TYPE_7__ {int font_size; int scr; TYPE_1__ curs_attr; TYPE_3__* sc; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_8__ {unsigned char* font_8; unsigned char* font_16; unsigned char* font_14; int cursor_char; int adp; } ;
typedef TYPE_3__ sc_softc_t ;


 int CONS_CHAR_CURSOR ;
 int TRUE ;
 int bcopy (unsigned char*,unsigned char*,int) ;
 int imax (scalar_t__,int ) ;
 int sc_vtb_putc (int *,int,int,int) ;
 int vga_cursorattr_adj (TYPE_2__*,int,int ) ;
 int vga_flipattr (int,int ) ;
 int vidd_load_font (int ,int ,int,int,unsigned char*,int,int) ;

__attribute__((used)) static void
draw_txtcharcursor(scr_stat *scp, int at, u_short c, u_short a, int flip)
{
 sc_softc_t *sc;

 sc = scp->sc;


 if (scp->curs_attr.flags & CONS_CHAR_CURSOR) {
  unsigned char *font;
  int h;
  int i;

  if (scp->font_size < 14) {
   font = sc->font_8;
   h = 8;
  } else if (scp->font_size >= 16) {
   font = sc->font_16;
   h = 16;
  } else {
   font = sc->font_14;
   h = 14;
  }
  if (scp->curs_attr.base >= h)
   return;
  if (flip)
   a = vga_flipattr(a, TRUE);






  bcopy(font + c*h, font + sc->cursor_char*h, h);
  font = font + sc->cursor_char*h;
  for (i = imax(h - scp->curs_attr.base - scp->curs_attr.height, 0);
   i < h - scp->curs_attr.base; ++i) {
   font[i] ^= 0xff;
  }

  vidd_load_font(sc->adp, 0, h, 8, font, sc->cursor_char, 1);
  sc_vtb_putc(&scp->scr, at, sc->cursor_char, a);
 } else

 {
  if (flip)
   a = vga_flipattr(a, TRUE);
  a = vga_cursorattr_adj(scp, a, TRUE);
  sc_vtb_putc(&scp->scr, at, c, a);
 }
}
