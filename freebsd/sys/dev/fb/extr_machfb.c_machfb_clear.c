
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
struct machfb_softc {int sc_height; int sc_width; } ;


 int SC_NORM_ATTR ;
 int machfb_fill_rect (int *,int,int ,int ,int ,int ) ;

__attribute__((used)) static int
machfb_clear(video_adapter_t *adp)
{
 struct machfb_softc *sc;

 sc = (struct machfb_softc *)adp;

 machfb_fill_rect(adp, (SC_NORM_ATTR >> 4) & 0xf, 0, 0, sc->sc_width,
     sc->sc_height);

 return (0);
}
