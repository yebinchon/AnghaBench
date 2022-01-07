
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {int nfe_suspended; int nfe_ifp; } ;
typedef int device_t ;


 int NFE_LOCK (struct nfe_softc*) ;
 int NFE_UNLOCK (struct nfe_softc*) ;
 struct nfe_softc* device_get_softc (int ) ;
 int nfe_set_wol (struct nfe_softc*) ;
 int nfe_stop (int ) ;

__attribute__((used)) static int
nfe_suspend(device_t dev)
{
 struct nfe_softc *sc;

 sc = device_get_softc(dev);

 NFE_LOCK(sc);
 nfe_stop(sc->nfe_ifp);
 nfe_set_wol(sc);
 sc->nfe_suspended = 1;
 NFE_UNLOCK(sc);

 return (0);
}
