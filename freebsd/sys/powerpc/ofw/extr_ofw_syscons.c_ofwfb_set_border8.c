
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int uint8_t ;
struct ofwfb_softc {int sc_ymargin; int sc_width; int sc_stride; int sc_height; int sc_xmargin; scalar_t__ sc_addr; } ;


 int ofwfb_background (int) ;

__attribute__((used)) static int
ofwfb_set_border8(video_adapter_t *adp, int border)
{
 struct ofwfb_softc *sc;
 int i, j;
 uint8_t *addr;
 uint8_t bground;

 sc = (struct ofwfb_softc *)adp;

 bground = ofwfb_background(border);


 addr = (uint8_t *) sc->sc_addr;
 for (i = 0; i < sc->sc_ymargin; i++) {
  for (j = 0; j < sc->sc_width; j++) {
   *(addr + j) = bground;
  }
  addr += sc->sc_stride;
 }


 addr = (uint8_t *) sc->sc_addr + (sc->sc_height - sc->sc_ymargin)*sc->sc_stride;
 for (i = 0; i < sc->sc_ymargin; i++) {
  for (j = 0; j < sc->sc_width; j++) {
   *(addr + j) = bground;
  }
  addr += sc->sc_stride;
 }


 addr = (uint8_t *) sc->sc_addr + sc->sc_ymargin*sc->sc_stride;
 for (i = 0; i < sc->sc_height - 2*sc->sc_xmargin; i++) {
  for (j = 0; j < sc->sc_xmargin; j++) {
   *(addr + j) = bground;
   *(addr + j + sc->sc_width - sc->sc_xmargin) = bground;
  }
  addr += sc->sc_stride;
 }

 return (0);
}
