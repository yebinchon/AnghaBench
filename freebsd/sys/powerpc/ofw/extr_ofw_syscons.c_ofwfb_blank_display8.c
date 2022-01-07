
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int uint32_t ;
struct ofwfb_softc {int sc_stride; int sc_height; scalar_t__ sc_addr; } ;


 int SC_NORM_ATTR ;
 int ofwfb_background (int ) ;

__attribute__((used)) static int
ofwfb_blank_display8(video_adapter_t *adp, int mode)
{
 struct ofwfb_softc *sc;
 int i;
 uint32_t *addr;
 uint32_t color;
 uint32_t end;

 sc = (struct ofwfb_softc *)adp;
 addr = (uint32_t *) sc->sc_addr;
 end = (sc->sc_stride/4) * sc->sc_height;


 color = (ofwfb_background(SC_NORM_ATTR) << 24) |
     (ofwfb_background(SC_NORM_ATTR) << 16) |
     (ofwfb_background(SC_NORM_ATTR) << 8) |
     (ofwfb_background(SC_NORM_ATTR));

 for (i = 0; i < end; i++)
  *(addr + i) = color;

 return (0);
}
