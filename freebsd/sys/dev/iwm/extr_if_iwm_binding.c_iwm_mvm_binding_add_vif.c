
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_vap {int phy_ctxt; int iv_vap; } ;
struct iwm_softc {int dummy; } ;


 int EINVAL ;
 int FALSE ;
 int TRUE ;
 int iwm_mvm_binding_update (struct iwm_softc*,struct iwm_vap*,int ,int ) ;
 scalar_t__ iwm_mvm_sf_update (struct iwm_softc*,int *,int ) ;

int
iwm_mvm_binding_add_vif(struct iwm_softc *sc, struct iwm_vap *ivp)
{
 if (!ivp->phy_ctxt)
  return EINVAL;





 if (iwm_mvm_sf_update(sc, &ivp->iv_vap, FALSE))
  return EINVAL;

 return iwm_mvm_binding_update(sc, ivp, ivp->phy_ctxt, TRUE);
}
