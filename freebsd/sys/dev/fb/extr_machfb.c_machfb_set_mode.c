
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
struct machfb_softc {int sc_bg_cache; int sc_fg_cache; scalar_t__ sc_draw_cache; } ;



__attribute__((used)) static int
machfb_set_mode(video_adapter_t *adp, int mode)
{
 struct machfb_softc *sc;

 sc = (struct machfb_softc *)adp;

 sc->sc_bg_cache = -1;
 sc->sc_fg_cache = -1;
 sc->sc_draw_cache = 0;

 return (0);
}
