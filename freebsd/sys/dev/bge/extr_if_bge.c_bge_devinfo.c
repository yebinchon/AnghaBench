
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bge_softc {int bge_flags; scalar_t__ bge_pcixcap; int bge_dev; int bge_chiprev; int bge_asicrev; int bge_chipid; } ;


 int BGE_FLAG_PCIE ;
 int BGE_FLAG_PCIX ;
 int BGE_MISCCFG_BOARD_ID_5704CIOBE ;
 int BGE_MISCCFG_BOARD_ID_MASK ;
 int BGE_MISC_CFG ;
 int BGE_PCISTATE_32BIT_BUS ;
 int BGE_PCISTATE_PCI_BUSSPEED ;
 int BGE_PCI_CLKCTL ;
 int BGE_PCI_PCISTATE ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int device_printf (int ,char*,int ,int ,int ) ;
 int pci_read_config (int ,int ,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
bge_devinfo(struct bge_softc *sc)
{
 uint32_t cfg, clk;

 device_printf(sc->bge_dev,
     "CHIP ID 0x%08x; ASIC REV 0x%02x; CHIP REV 0x%02x; ",
     sc->bge_chipid, sc->bge_asicrev, sc->bge_chiprev);
 if (sc->bge_flags & BGE_FLAG_PCIE)
  printf("PCI-E\n");
 else if (sc->bge_flags & BGE_FLAG_PCIX) {
  printf("PCI-X ");
  cfg = CSR_READ_4(sc, BGE_MISC_CFG) & BGE_MISCCFG_BOARD_ID_MASK;
  if (cfg == BGE_MISCCFG_BOARD_ID_5704CIOBE)
   clk = 133;
  else {
   clk = CSR_READ_4(sc, BGE_PCI_CLKCTL) & 0x1F;
   switch (clk) {
   case 0:
    clk = 33;
    break;
   case 2:
    clk = 50;
    break;
   case 4:
    clk = 66;
    break;
   case 6:
    clk = 100;
    break;
   case 7:
    clk = 133;
    break;
   }
  }
  printf("%u MHz\n", clk);
 } else {
  if (sc->bge_pcixcap != 0)
   printf("PCI on PCI-X ");
  else
   printf("PCI ");
  cfg = pci_read_config(sc->bge_dev, BGE_PCI_PCISTATE, 4);
  if (cfg & BGE_PCISTATE_PCI_BUSSPEED)
   clk = 66;
  else
   clk = 33;
  if (cfg & BGE_PCISTATE_32BIT_BUS)
   printf("%u MHz; 32bit\n", clk);
  else
   printf("%u MHz; 64bit\n", clk);
 }
}
