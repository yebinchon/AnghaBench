
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int8_t ;
typedef int u_char ;
struct ofwfb_softc {int sc_ymargin; int sc_stride; uintptr_t sc_xmargin; int sc_height; int sc_width; scalar_t__ sc_addr; } ;


 int SC_NORM_ATTR ;
 int ofwfb_background (int ) ;
 int ofwfb_foreground (int ) ;

__attribute__((used)) static int
ofwfb_putm8(video_adapter_t *adp, int x, int y, uint8_t *pixel_image,
    uint32_t pixel_mask, int size, int width)
{
 struct ofwfb_softc *sc;
 int i, j, k;
 uint8_t *addr;
 u_char fg, bg;

 sc = (struct ofwfb_softc *)adp;
 addr = (u_int8_t *)((uintptr_t)sc->sc_addr
  + (y + sc->sc_ymargin)*sc->sc_stride
  + x + sc->sc_xmargin);

 fg = ofwfb_foreground(SC_NORM_ATTR);
 bg = ofwfb_background(SC_NORM_ATTR);

 for (i = 0; i < size && i+y < sc->sc_height - 2*sc->sc_ymargin; i++) {




  for (j = 0, k = width; j < 8; j++, k--) {
   if (x + j >= sc->sc_width - 2*sc->sc_xmargin)
    continue;

   if (pixel_image[i] & (1 << k))
    addr[j] = (addr[j] == fg) ? bg : fg;
  }

  addr += (sc->sc_stride / sizeof(u_int8_t));
 }

 return (0);
}
