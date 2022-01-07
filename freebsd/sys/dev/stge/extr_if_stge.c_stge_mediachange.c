
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {int sc_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {struct stge_softc* if_softc; } ;


 struct mii_data* device_get_softc (int ) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
stge_mediachange(struct ifnet *ifp)
{
 struct stge_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = device_get_softc(sc->sc_miibus);
 mii_mediachg(mii);

 return (0);
}
