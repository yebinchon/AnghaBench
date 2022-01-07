
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {int dummy; } ;
struct carp_softc {int sc_ifasiz; struct ifaddr** sc_ifas; } ;


 int CARP_LOCK (struct carp_softc*) ;
 int CARP_UNLOCK (struct carp_softc*) ;
 int M_CARP ;
 int M_WAITOK ;
 int M_ZERO ;
 int bcopy (struct ifaddr**,struct ifaddr**,int) ;
 int free (struct ifaddr**,int ) ;
 struct ifaddr** malloc (int,int ,int) ;

__attribute__((used)) static void
carp_grow_ifas(struct carp_softc *sc)
{
 struct ifaddr **new;

 new = malloc(sc->sc_ifasiz * 2, M_CARP, M_WAITOK | M_ZERO);
 CARP_LOCK(sc);
 bcopy(sc->sc_ifas, new, sc->sc_ifasiz);
 free(sc->sc_ifas, M_CARP);
 sc->sc_ifas = new;
 sc->sc_ifasiz *= 2;
 CARP_UNLOCK(sc);
}
