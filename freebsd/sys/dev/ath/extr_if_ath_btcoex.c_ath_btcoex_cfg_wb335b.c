
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_softc {int sc_pci_devinfo; int sc_dev; } ;


 int ATH_MCI_ANT_ARCH_1_ANT_PA_LNA_SHARED ;
 int ATH_MCI_ANT_ARCH_2_ANT_PA_LNA_NON_SHARED ;
 int ATH_MCI_CONFIG_ANT_ARCH ;
 int ATH_MCI_CONFIG_ANT_ARCH_S ;
 int ATH_PCI_AR9565_1ANT ;
 int ATH_PCI_AR9565_2ANT ;
 int ATH_PCI_BT_ANT_DIV ;
 int ath_btcoex_cfg_mci (struct ath_softc*,int,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ath_btcoex_cfg_wb335b(struct ath_softc *sc)
{
 uint32_t flags;
 int do_btdiv = 0;


 flags = 0xa4c1;






 if (sc->sc_pci_devinfo & ATH_PCI_AR9565_1ANT) {
  flags &= ~ATH_MCI_CONFIG_ANT_ARCH;
  flags |= ATH_MCI_ANT_ARCH_1_ANT_PA_LNA_SHARED <<
      ATH_MCI_CONFIG_ANT_ARCH_S;
 } else if (sc->sc_pci_devinfo & ATH_PCI_AR9565_2ANT) {
  flags &= ~ATH_MCI_CONFIG_ANT_ARCH;
  flags |= ATH_MCI_ANT_ARCH_2_ANT_PA_LNA_NON_SHARED <<
      ATH_MCI_CONFIG_ANT_ARCH_S;
 }

 if (sc->sc_pci_devinfo & ATH_PCI_BT_ANT_DIV) {
  do_btdiv = 1;
 }

 device_printf(sc->sc_dev, "Enabling WB335 BTCOEX\n");

 return (ath_btcoex_cfg_mci(sc, flags, do_btdiv));
}
