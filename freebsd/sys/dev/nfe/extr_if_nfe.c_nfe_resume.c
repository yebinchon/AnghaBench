
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {scalar_t__ nfe_suspended; int nfe_ifp; } ;
typedef int if_t ;
typedef int device_t ;


 int IFF_UP ;
 int NFE_LOCK (struct nfe_softc*) ;
 int NFE_UNLOCK (struct nfe_softc*) ;
 struct nfe_softc* device_get_softc (int ) ;
 int if_getflags (int ) ;
 int nfe_init_locked (struct nfe_softc*) ;
 int nfe_power (struct nfe_softc*) ;

__attribute__((used)) static int
nfe_resume(device_t dev)
{
 struct nfe_softc *sc;
 if_t ifp;

 sc = device_get_softc(dev);

 NFE_LOCK(sc);
 nfe_power(sc);
 ifp = sc->nfe_ifp;
 if (if_getflags(ifp) & IFF_UP)
  nfe_init_locked(sc);
 sc->nfe_suspended = 0;
 NFE_UNLOCK(sc);

 return (0);
}
