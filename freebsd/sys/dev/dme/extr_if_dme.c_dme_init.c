
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dme_softc {int dummy; } ;


 int DME_LOCK (struct dme_softc*) ;
 int DME_UNLOCK (struct dme_softc*) ;
 int dme_init_locked (struct dme_softc*) ;

__attribute__((used)) static void
dme_init(void *xcs)
{
 struct dme_softc *sc = xcs;

 DME_LOCK(sc);
 dme_init_locked(sc);
 DME_UNLOCK(sc);
}
