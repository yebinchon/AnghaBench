
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int uint32_t ;
struct ofwfb_softc {int sc_stride; int sc_height; scalar_t__ sc_addr; } ;


 int SC_NORM_ATTR ;
 int ofwfb_background (int ) ;
 int ofwfb_pix32 (struct ofwfb_softc*,int ) ;

__attribute__((used)) static int
ofwfb_blank_display32(video_adapter_t *adp, int mode)
{
 struct ofwfb_softc *sc;
 int i;
 uint32_t *addr, blank;

 sc = (struct ofwfb_softc *)adp;
 addr = (uint32_t *) sc->sc_addr;
 blank = ofwfb_pix32(sc, ofwfb_background(SC_NORM_ATTR));

 for (i = 0; i < (sc->sc_stride/4)*sc->sc_height; i++)
  *(addr + i) = blank;

 return (0);
}
