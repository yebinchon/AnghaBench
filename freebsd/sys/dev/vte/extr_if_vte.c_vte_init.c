
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vte_softc {int dummy; } ;


 int VTE_LOCK (struct vte_softc*) ;
 int VTE_UNLOCK (struct vte_softc*) ;
 int vte_init_locked (struct vte_softc*) ;

__attribute__((used)) static void
vte_init(void *xsc)
{
 struct vte_softc *sc;

 sc = (struct vte_softc *)xsc;
 VTE_LOCK(sc);
 vte_init_locked(sc);
 VTE_UNLOCK(sc);
}
