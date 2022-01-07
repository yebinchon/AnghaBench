
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {int sc_card_flags; scalar_t__ sc_pci_subvid; scalar_t__ sc_bbp_id; int sc_pci_revid; int sc_pci_subdid; } ;


 scalar_t__ BWI_BBPID_BCM4301 ;
 int BWI_CARD_F_BT_COEXIST ;
 int BWI_CARD_F_PA_GPIO9 ;
 int BWI_DBG_ATTACH ;
 int BWI_SPROM_CARD_FLAGS ;
 int DPRINTF (struct bwi_softc*,int ,char*,int) ;
 scalar_t__ PCI_VENDOR_APPLE ;
 scalar_t__ PCI_VENDOR_DELL ;
 int bwi_read_sprom (struct bwi_softc*,int ) ;

__attribute__((used)) static void
bwi_get_card_flags(struct bwi_softc *sc)
{


 sc->sc_card_flags = bwi_read_sprom(sc, BWI_SPROM_CARD_FLAGS);
 if (sc->sc_card_flags == 0xffff)
  sc->sc_card_flags = 0;

 if (sc->sc_pci_subvid == 0x1028 &&
     sc->sc_bbp_id == BWI_BBPID_BCM4301 &&
     sc->sc_pci_revid == 0x74)
  sc->sc_card_flags |= BWI_CARD_F_BT_COEXIST;

 if (sc->sc_pci_subvid == 0x106b &&
     sc->sc_pci_subdid == 0x4e &&
     sc->sc_pci_revid > 0x40)
  sc->sc_card_flags |= BWI_CARD_F_PA_GPIO9;

 DPRINTF(sc, BWI_DBG_ATTACH, "card flags 0x%04x\n", sc->sc_card_flags);


}
