
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {scalar_t__ cmd_hold_nic_awake; } ;


 int IWM_CLRBITS (struct iwm_softc*,int ,int ) ;
 int IWM_CSR_GP_CNTRL ;
 int IWM_CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ;

void
iwm_nic_unlock(struct iwm_softc *sc)
{
 if (sc->cmd_hold_nic_awake)
  return;

 IWM_CLRBITS(sc, IWM_CSR_GP_CNTRL,
     IWM_CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);
}
