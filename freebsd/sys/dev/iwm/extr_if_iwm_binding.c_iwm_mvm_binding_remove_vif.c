
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_vap {int iv_vap; int phy_ctxt; } ;
struct iwm_softc {int sc_dev; } ;


 int EINVAL ;
 int FALSE ;
 int TRUE ;
 int device_printf (int ,char*) ;
 int iwm_mvm_binding_update (struct iwm_softc*,struct iwm_vap*,int ,int ) ;
 scalar_t__ iwm_mvm_sf_update (struct iwm_softc*,int *,int ) ;

int
iwm_mvm_binding_remove_vif(struct iwm_softc *sc, struct iwm_vap *ivp)
{
 int ret;

 if (!ivp->phy_ctxt)
  return EINVAL;

 ret = iwm_mvm_binding_update(sc, ivp, ivp->phy_ctxt, FALSE);

 if (!ret) {
  if (iwm_mvm_sf_update(sc, &ivp->iv_vap, TRUE))
   device_printf(sc->sc_dev,
       "Failed to update SF state\n");
 }

 return ret;
}
