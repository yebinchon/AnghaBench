
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_if_softc {int msk_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {struct msk_if_softc* if_softc; } ;


 int MSK_IF_LOCK (struct msk_if_softc*) ;
 int MSK_IF_UNLOCK (struct msk_if_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
msk_mediachange(struct ifnet *ifp)
{
 struct msk_if_softc *sc_if;
 struct mii_data *mii;
 int error;

 sc_if = ifp->if_softc;

 MSK_IF_LOCK(sc_if);
 mii = device_get_softc(sc_if->msk_miibus);
 error = mii_mediachg(mii);
 MSK_IF_UNLOCK(sc_if);

 return (error);
}
