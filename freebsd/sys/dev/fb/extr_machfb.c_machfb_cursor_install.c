
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ va_buffer; } ;
struct machfb_softc {int sc_curoff; int sc_flags; TYPE_1__ sc_va; } ;
struct TYPE_4__ {int red; int green; int blue; } ;


 int CUR_CLR0 ;
 int CUR_OFFSET ;
 int ENODEV ;
 int MACHFB_SWAP ;
 int SC_NORM_ATTR ;
 int bswap16 (int) ;
 int machfb_cursor_enable (struct machfb_softc*,int ) ;
 TYPE_2__* machfb_default_cmap ;
 int** machfb_mouse_pointer_bits ;
 int* machfb_mouse_pointer_lut ;
 int regw (struct machfb_softc*,int ,int) ;

__attribute__((used)) static int
machfb_cursor_install(struct machfb_softc *sc)
{
 uint16_t *p, v;
 uint8_t fg;
 int i, j;

 if (sc->sc_curoff == 0)
  return (ENODEV);

 machfb_cursor_enable(sc, 0);
 regw(sc, CUR_OFFSET, sc->sc_curoff >> 3);
 fg = SC_NORM_ATTR & 0xf;
 regw(sc, CUR_CLR0, machfb_default_cmap[fg].red << 24 |
     machfb_default_cmap[fg].green << 16 |
     machfb_default_cmap[fg].blue << 8);
 p = (uint16_t *)(sc->sc_va.va_buffer + sc->sc_curoff);
 for (i = 0; i < 64; i++) {
  for (j = 0; j < 8; j++) {
   v = machfb_mouse_pointer_lut[
       machfb_mouse_pointer_bits[i][j] >> 4] << 8 |
       machfb_mouse_pointer_lut[
       machfb_mouse_pointer_bits[i][j] & 0x0f];
   if (sc->sc_flags & MACHFB_SWAP)
    *(p++) = bswap16(v);
   else
    *(p++) = v;
  }
 }

 return (0);
}
