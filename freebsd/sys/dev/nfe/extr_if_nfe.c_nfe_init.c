
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {int dummy; } ;


 int NFE_LOCK (struct nfe_softc*) ;
 int NFE_UNLOCK (struct nfe_softc*) ;
 int nfe_init_locked (struct nfe_softc*) ;

__attribute__((used)) static void
nfe_init(void *xsc)
{
 struct nfe_softc *sc = xsc;

 NFE_LOCK(sc);
 nfe_init_locked(sc);
 NFE_UNLOCK(sc);
}
