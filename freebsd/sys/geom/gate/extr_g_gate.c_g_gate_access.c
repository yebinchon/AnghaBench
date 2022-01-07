
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_provider {TYPE_1__* geom; } ;
struct g_gate_softc {int sc_flags; } ;
struct TYPE_2__ {struct g_gate_softc* softc; } ;


 int ENXIO ;
 int EPERM ;
 int G_GATE_FLAG_DESTROY ;
 int G_GATE_FLAG_READONLY ;
 int G_GATE_FLAG_WRITEONLY ;

__attribute__((used)) static int
g_gate_access(struct g_provider *pp, int dr, int dw, int de)
{
 struct g_gate_softc *sc;

 if (dr <= 0 && dw <= 0 && de <= 0)
  return (0);
 sc = pp->geom->softc;
 if (sc == ((void*)0) || (sc->sc_flags & G_GATE_FLAG_DESTROY) != 0)
  return (ENXIO);





 if ((sc->sc_flags & G_GATE_FLAG_WRITEONLY) != 0 && dr > 0)
  return (EPERM);
 return (0);
}
