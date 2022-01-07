
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {int nfe_miibus; } ;
struct mii_data {int dummy; } ;
typedef int if_t ;


 int NFE_LOCK (struct nfe_softc*) ;
 int NFE_UNLOCK (struct nfe_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 struct nfe_softc* if_getsoftc (int ) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
nfe_ifmedia_upd(if_t ifp)
{
 struct nfe_softc *sc = if_getsoftc(ifp);
 struct mii_data *mii;

 NFE_LOCK(sc);
 mii = device_get_softc(sc->nfe_miibus);
 mii_mediachg(mii);
 NFE_UNLOCK(sc);

 return (0);
}
