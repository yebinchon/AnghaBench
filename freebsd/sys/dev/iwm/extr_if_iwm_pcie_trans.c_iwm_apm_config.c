
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iwm_softc {int sc_ltr_enabled; int sc_dev; } ;
typedef int lctl ;
typedef int cap ;


 int IWM_CLRBITS (struct iwm_softc*,int ,int ) ;
 int IWM_CSR_GIO_REG ;
 int IWM_CSR_GIO_REG_VAL_L0S_ENABLED ;
 int IWM_DEBUG_PWRSAVE ;
 int IWM_DEBUG_RESET ;
 int IWM_DPRINTF (struct iwm_softc*,int,char*,char*,char*) ;
 int IWM_SETBITS (struct iwm_softc*,int ,int ) ;
 int PCIEM_CTL2_LTR_ENABLE ;
 int PCIEM_LINK_CTL_ASPMC_L1 ;
 scalar_t__ PCIER_DEVICE_CTL2 ;
 scalar_t__ PCIER_LINK_CTL ;
 int PCIY_EXPRESS ;
 int pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,scalar_t__,int) ;

void
iwm_apm_config(struct iwm_softc *sc)
{
 uint16_t lctl, cap;
 int pcie_ptr;
 int error;

 error = pci_find_cap(sc->sc_dev, PCIY_EXPRESS, &pcie_ptr);
 if (error != 0)
  return;
 lctl = pci_read_config(sc->sc_dev, pcie_ptr + PCIER_LINK_CTL,
     sizeof(lctl));
 if (lctl & PCIEM_LINK_CTL_ASPMC_L1) {
  IWM_SETBITS(sc, IWM_CSR_GIO_REG,
      IWM_CSR_GIO_REG_VAL_L0S_ENABLED);
 } else {
  IWM_CLRBITS(sc, IWM_CSR_GIO_REG,
      IWM_CSR_GIO_REG_VAL_L0S_ENABLED);
 }

 cap = pci_read_config(sc->sc_dev, pcie_ptr + PCIER_DEVICE_CTL2,
     sizeof(cap));
 sc->sc_ltr_enabled = (cap & PCIEM_CTL2_LTR_ENABLE) ? 1 : 0;
 IWM_DPRINTF(sc, IWM_DEBUG_RESET | IWM_DEBUG_PWRSAVE,
     "L1 %sabled - LTR %sabled\n",
     (lctl & PCIEM_LINK_CTL_ASPMC_L1) ? "En" : "Dis",
     sc->sc_ltr_enabled ? "En" : "Dis");
}
