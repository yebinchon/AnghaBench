
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int tx_boundary; int dev; int fw_name; } ;
typedef TYPE_1__ mxge_softc_t ;
typedef int device_t ;


 int E2BIG ;
 int ENOSYS ;
 int MXGEFW_CMD_UNALIGNED_TEST ;
 scalar_t__ MXGE_PCI_REV_Z8ES ;
 int PCIY_EXPRESS ;
 int device_printf (int ,char*,...) ;
 int mxge_dma_test (TYPE_1__*,int ) ;
 int mxge_enable_nvidia_ecrc (TYPE_1__*) ;
 int mxge_fw_aligned ;
 int mxge_load_firmware (TYPE_1__*,int) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 scalar_t__ pci_get_revid (int ) ;
 int pci_read_config (int ,int,int) ;

__attribute__((used)) static int
mxge_firmware_probe(mxge_softc_t *sc)
{
 device_t dev = sc->dev;
 int reg, status;
 uint16_t pectl;

 sc->tx_boundary = 4096;




 if (pci_find_cap(dev, PCIY_EXPRESS, &reg) == 0) {
  pectl = pci_read_config(dev, reg + 0x8, 2);
  if ((pectl & (5 << 12)) != (5 << 12)) {
   device_printf(dev, "Max Read Req. size != 4k (0x%x\n",
          pectl);
   sc->tx_boundary = 2048;
  }
 }





 sc->fw_name = mxge_fw_aligned;
 status = mxge_load_firmware(sc, 1);
 if (status != 0) {
  return status;
 }




 mxge_enable_nvidia_ecrc(sc);





 if (pci_get_revid(sc->dev) >= MXGE_PCI_REV_Z8ES)
  return 0;
 status = mxge_dma_test(sc, MXGEFW_CMD_UNALIGNED_TEST);
 if (status == 0)
  return 0;

 if (status != E2BIG)
  device_printf(dev, "DMA test failed: %d\n", status);
 if (status == ENOSYS)
  device_printf(dev, "Falling back to ethp! "
         "Please install up to date fw\n");
 return status;
}
