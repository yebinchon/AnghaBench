
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alc_softc {int dummy; } ;


 int ALC_LOCK (struct alc_softc*) ;
 int ALC_UNLOCK (struct alc_softc*) ;
 int alc_init_locked (struct alc_softc*) ;

__attribute__((used)) static void
alc_init(void *xsc)
{
 struct alc_softc *sc;

 sc = (struct alc_softc *)xsc;
 ALC_LOCK(sc);
 alc_init_locked(sc);
 ALC_UNLOCK(sc);
}
