
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {TYPE_1__* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct TYPE_2__ {int miibus; } ;
typedef TYPE_1__ cvm_oct_private_t ;


 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
octe_mii_medstat(struct ifnet *ifp, struct ifmediareq *ifm)
{
 cvm_oct_private_t *priv;
 struct mii_data *mii;

 priv = ifp->if_softc;
 mii = device_get_softc(priv->miibus);

 mii_pollstat(mii);
 ifm->ifm_active = mii->mii_media_active;
 ifm->ifm_status = mii->mii_media_status;
}
