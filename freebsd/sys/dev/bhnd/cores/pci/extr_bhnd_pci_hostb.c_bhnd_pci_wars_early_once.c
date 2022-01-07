
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int inv; } ;
struct TYPE_3__ {int aspm_en; } ;
struct bhnd_pcihb_softc {int quirks; int pci_dev; int dev; TYPE_2__ sdr9_quirk_polarity; TYPE_1__ aspm_quirk_override; } ;
struct bhnd_board_info {int board_flags2; } ;


 int BHND_BFL2_PCIEWAR_OVR ;
 scalar_t__ BHND_DEVCLASS_PCIE ;
 int BHND_PCIE_PLP_POLARITY_INV ;
 int BHND_PCIE_PLP_STATUSREG ;
 int BHND_PCIE_QUIRK_ASPM_OVR ;
 int BHND_PCIE_QUIRK_BFL2_PCIEWAR_EN ;
 int BHND_PCIE_QUIRK_DEFAULT_MRRS_512 ;
 int BHND_PCIE_QUIRK_SDR9_POLARITY ;
 int BHND_PCI_PROTO_READ_4 (struct bhnd_pcihb_softc*,int ) ;
 int BHND_PCI_QUIRK_960NS_LATTIM_OVR ;
 int PCIR_LATTIMER ;
 scalar_t__ bhnd_get_class (int ) ;
 int bhnd_read_board_info (int ,struct bhnd_board_info*) ;
 int panic (char*) ;
 scalar_t__ pci_set_max_read_req (int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
bhnd_pci_wars_early_once(struct bhnd_pcihb_softc *sc)
{
 int error;


 if (sc->quirks & BHND_PCI_QUIRK_960NS_LATTIM_OVR) {
  pci_write_config(sc->pci_dev, PCIR_LATTIMER, 0x20 ,
      1);
 }


 if (sc->quirks & BHND_PCIE_QUIRK_ASPM_OVR) {
  struct bhnd_board_info board;
  bool aspm_en;


  if ((error = bhnd_read_board_info(sc->dev, &board)))
   return (error);


  aspm_en = 1;
  if (board.board_flags2 & BHND_BFL2_PCIEWAR_OVR)
   aspm_en = 0;



  if (sc->quirks & BHND_PCIE_QUIRK_BFL2_PCIEWAR_EN)
   aspm_en = 0;

  sc->aspm_quirk_override.aspm_en = aspm_en;
 }




 if (sc->quirks & BHND_PCIE_QUIRK_SDR9_POLARITY) {
  uint32_t st;
  bool inv;

  st = BHND_PCI_PROTO_READ_4(sc, BHND_PCIE_PLP_STATUSREG);
  inv = ((st & BHND_PCIE_PLP_POLARITY_INV) != 0);
  sc->sdr9_quirk_polarity.inv = inv;
 }


 if (bhnd_get_class(sc->dev) == BHND_DEVCLASS_PCIE) {
  int msize;

  msize = 128;
  if (sc->quirks & BHND_PCIE_QUIRK_DEFAULT_MRRS_512)
   msize = 512;

  if (pci_set_max_read_req(sc->pci_dev, msize) == 0)
   panic("set mrrs on non-PCIe device");
 }

 return (0);
}
