
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_gate_softc {int sc_ref; TYPE_1__* sc_provider; } ;
struct TYPE_2__ {int name; } ;


 int G_GATE_NAME_GIVEN ;
 int KASSERT (int ,char*) ;
 int g_gate_maxunits ;
 struct g_gate_softc** g_gate_units ;
 int g_gate_units_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static struct g_gate_softc *
g_gate_hold(int unit, const char *name)
{
 struct g_gate_softc *sc = ((void*)0);

 mtx_lock(&g_gate_units_lock);
 if (unit >= 0 && unit < g_gate_maxunits)
  sc = g_gate_units[unit];
 else if (unit == G_GATE_NAME_GIVEN) {
  KASSERT(name != ((void*)0), ("name is NULL"));
  for (unit = 0; unit < g_gate_maxunits; unit++) {
   if (g_gate_units[unit] == ((void*)0))
    continue;
   if (strcmp(name,
       g_gate_units[unit]->sc_provider->name) != 0) {
    continue;
   }
   sc = g_gate_units[unit];
   break;
  }
 }
 if (sc != ((void*)0))
  sc->sc_ref++;
 mtx_unlock(&g_gate_units_lock);
 return (sc);
}
