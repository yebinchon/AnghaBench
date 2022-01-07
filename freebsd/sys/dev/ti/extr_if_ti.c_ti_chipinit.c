
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ti_softc {scalar_t__ ti_hwrev; int ti_hdrsplit; int ti_dev; TYPE_1__* ti_ifp; int ti_linkstat; } ;
struct TYPE_2__ {int if_capenable; } ;


 int CSR_READ_4 (struct ti_softc*,int ) ;
 int CSR_WRITE_4 (struct ti_softc*,int ,int) ;
 int EINVAL ;
 int ENODEV ;
 int IFCAP_RXCSUM ;
 int IFCAP_TXCSUM ;
 int PCIM_CMD_MWIEN ;
 int TI_CLRBIT (struct ti_softc*,int ,int) ;
 int TI_CPUSTATE_HALT ;
 int TI_CPUSTATE_ROMFAIL ;
 int TI_CPU_CTL_B ;
 int TI_CPU_STATE ;
 int TI_DMA_STATE_THRESH_8W ;
 int TI_EV_CODE_LINK_DOWN ;
 int TI_GCR_DMA_READCFG ;
 int TI_GCR_DMA_WRITECFG ;
 int TI_GCR_OPMODE ;
 scalar_t__ TI_HWREV_TIGON ;
 scalar_t__ TI_HWREV_TIGON_II ;
 int TI_MCR_SRAM_SYNCHRONOUS ;
 int TI_MHC_BIGENDIAN_INIT ;
 int TI_MHC_CHIP_REV_MASK ;
 int TI_MHC_LITTLEENDIAN_INIT ;
 int TI_MISC_CONF ;
 int TI_MISC_HOST_CTL ;
 int TI_MISC_LOCAL_CTL ;
 int TI_MLC_SRAM_BANK_512K ;
 int TI_OPMODE_1_DMA_ACTIVE ;
 int TI_OPMODE_BYTESWAP_BD ;
 int TI_OPMODE_BYTESWAP_DATA ;
 int TI_OPMODE_DONT_FRAG_JUMBO ;
 int TI_OPMODE_FATAL_ENB ;
 int TI_OPMODE_JUMBO_HDRSPLIT ;
 int TI_OPMODE_WARN_ENB ;
 int TI_OPMODE_WORDSWAP_BD ;
 int TI_PCISTATE_MINDMA ;
 int TI_PCISTATE_READ_MAXDMA ;
 int TI_PCISTATE_USE_MEM_RD_MULT ;
 int TI_PCISTATE_WRITE_MAXDMA ;
 int TI_PCI_BIST ;
 int TI_PCI_CMDSTAT ;
 int TI_PCI_READ_CMD ;
 int TI_PCI_STATE ;
 int TI_PCI_WRITE_CMD ;


 int TI_SETBIT (struct ti_softc*,int ,int) ;
 int bootverbose ;
 int device_printf (int ,char*,...) ;
 scalar_t__ ti_64bitslot_war (struct ti_softc*) ;

__attribute__((used)) static int
ti_chipinit(struct ti_softc *sc)
{
 uint32_t cacheline;
 uint32_t pci_writemax = 0;
 uint32_t hdrsplit;


 sc->ti_linkstat = TI_EV_CODE_LINK_DOWN;






 CSR_WRITE_4(sc, TI_MISC_HOST_CTL,
     TI_MHC_LITTLEENDIAN_INIT | (TI_MHC_LITTLEENDIAN_INIT << 24));



 if (CSR_READ_4(sc, TI_CPU_STATE) & TI_CPUSTATE_ROMFAIL) {
  device_printf(sc->ti_dev, "board self-diagnostics failed!\n");
  return (ENODEV);
 }


 TI_SETBIT(sc, TI_CPU_STATE, TI_CPUSTATE_HALT);


 switch (CSR_READ_4(sc, TI_MISC_HOST_CTL) & TI_MHC_CHIP_REV_MASK) {
 case 129:
  sc->ti_hwrev = TI_HWREV_TIGON;
  break;
 case 128:
  sc->ti_hwrev = TI_HWREV_TIGON_II;
  break;
 default:
  device_printf(sc->ti_dev, "unsupported chip revision\n");
  return (ENODEV);
 }


 if (sc->ti_hwrev == TI_HWREV_TIGON_II) {
  TI_SETBIT(sc, TI_CPU_CTL_B, TI_CPUSTATE_HALT);
  TI_SETBIT(sc, TI_MISC_LOCAL_CTL, TI_MLC_SRAM_BANK_512K);
  TI_SETBIT(sc, TI_MISC_CONF, TI_MCR_SRAM_SYNCHRONOUS);
 }
 CSR_WRITE_4(sc, TI_PCI_STATE, TI_PCI_READ_CMD|TI_PCI_WRITE_CMD);
 if (sc->ti_hwrev == TI_HWREV_TIGON_II) {
  TI_SETBIT(sc, TI_PCI_STATE, TI_PCISTATE_USE_MEM_RD_MULT);
 }


 TI_CLRBIT(sc, TI_PCI_STATE, (TI_PCISTATE_WRITE_MAXDMA|
     TI_PCISTATE_READ_MAXDMA));


 cacheline = CSR_READ_4(sc, TI_PCI_BIST) & 0xFF;







 if (CSR_READ_4(sc, TI_PCI_CMDSTAT) & PCIM_CMD_MWIEN) {
  switch (cacheline) {
  case 1:
  case 4:
  case 8:
  case 16:
  case 32:
  case 64:
   break;
  default:

   if (bootverbose)
    device_printf(sc->ti_dev, "cache line size %d"
        " not supported; disabling PCI MWI\n",
        cacheline);
   CSR_WRITE_4(sc, TI_PCI_CMDSTAT, CSR_READ_4(sc,
       TI_PCI_CMDSTAT) & ~PCIM_CMD_MWIEN);
   break;
  }
 }

 TI_SETBIT(sc, TI_PCI_STATE, pci_writemax);


 TI_SETBIT(sc, TI_PCI_STATE, TI_PCISTATE_MINDMA);

 if (sc->ti_hdrsplit)
  hdrsplit = TI_OPMODE_JUMBO_HDRSPLIT;
 else
  hdrsplit = 0;



 CSR_WRITE_4(sc, TI_GCR_OPMODE, TI_OPMODE_BYTESWAP_BD |
     TI_OPMODE_BYTESWAP_DATA | TI_OPMODE_WORDSWAP_BD |
     TI_OPMODE_WARN_ENB | TI_OPMODE_FATAL_ENB |
     TI_OPMODE_DONT_FRAG_JUMBO | hdrsplit);
 if ((sc->ti_ifp->if_capenable & (IFCAP_TXCSUM | IFCAP_RXCSUM)) == 0)
  TI_SETBIT(sc, TI_GCR_OPMODE, TI_OPMODE_1_DMA_ACTIVE);


 CSR_WRITE_4(sc, TI_GCR_DMA_WRITECFG, TI_DMA_STATE_THRESH_8W);
 CSR_WRITE_4(sc, TI_GCR_DMA_READCFG, TI_DMA_STATE_THRESH_8W);

 if (ti_64bitslot_war(sc)) {
  device_printf(sc->ti_dev, "bios thinks we're in a 64 bit slot, "
      "but we aren't");
  return (EINVAL);
 }

 return (0);
}
