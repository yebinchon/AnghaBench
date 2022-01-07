
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nge_softc {int dummy; } ;


 int NGE_LOCK (struct nge_softc*) ;
 int NGE_UNLOCK (struct nge_softc*) ;
 int nge_init_locked (struct nge_softc*) ;

__attribute__((used)) static void
nge_init(void *xsc)
{
 struct nge_softc *sc = xsc;

 NGE_LOCK(sc);
 nge_init_locked(sc);
 NGE_UNLOCK(sc);
}
