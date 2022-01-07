
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_softc {scalar_t__ sc_ref; int sc_flags; int sc_name; } ;


 int G_GATE_FLAG_DESTROY ;
 int KASSERT (int,char*) ;
 int g_gate_units_lock ;
 int g_topology_assert_not () ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
g_gate_release(struct g_gate_softc *sc)
{

 g_topology_assert_not();
 mtx_lock(&g_gate_units_lock);
 sc->sc_ref--;
 KASSERT(sc->sc_ref >= 0, ("Negative sc_ref for %s.", sc->sc_name));
 if (sc->sc_ref == 0 && (sc->sc_flags & G_GATE_FLAG_DESTROY) != 0)
  wakeup(&sc->sc_ref);
 mtx_unlock(&g_gate_units_lock);
}
