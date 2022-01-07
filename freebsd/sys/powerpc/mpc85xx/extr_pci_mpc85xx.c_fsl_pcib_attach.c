
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fsl_pcib_softc {int sc_rid; int sc_ip_min; int sc_ip_maj; int sc_pcie; int sc_pcie_capreg; int * sc_ih; int * sc_irq_res; int sc_dev; int sc_cfg_mtx; int * sc_res; scalar_t__ sc_busnr; int sc_bsh; int sc_bst; } ;
typedef int phandle_t ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int IP_MJ_M ;
 int IP_MJ_S ;
 int IP_MN_M ;
 int IP_MN_S ;
 int LTSSM_STAT_L0 ;
 int MTX_SPIN ;
 int PCIB_BCR_SECBUS_RESET ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIM_CMD_SERRESPEN ;
 int PCIR_BRIDGECTL_1 ;
 int PCIR_CAP_PTR ;
 int PCIR_COMMAND ;
 int PCIR_LTSSM ;
 int PCIR_VENDOR ;


 int REG_PEX_IP_BLK_REV1 ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_read_4 (int *,int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,int ,int **) ;
 struct fsl_pcib_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 void* fsl_pcib_cfgread (struct fsl_pcib_softc*,int ,int ,int ,int,int) ;
 int fsl_pcib_cfgwrite (struct fsl_pcib_softc*,int ,int ,int ,int,int,int) ;
 scalar_t__ fsl_pcib_decode_win (int ,struct fsl_pcib_softc*) ;
 int fsl_pcib_detach (int ) ;
 int fsl_pcib_err_init (int ) ;
 int fsl_pcib_err_intr ;
 int fsl_pcib_read_config (int ,int ,int ,int ,int ,int) ;
 int fsl_pcib_write_config (int ,int ,int ,int ,int ,int,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_pci_attach (int ) ;
 int ofw_pci_init (int ) ;
 int printf (char*,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
fsl_pcib_attach(device_t dev)
{
 struct fsl_pcib_softc *sc;
 phandle_t node;
 uint32_t cfgreg, brctl, ipreg;
 int error, rid;
 uint8_t ltssm, capptr;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 sc->sc_rid = 0;
 sc->sc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->sc_rid,
     RF_ACTIVE);
 if (sc->sc_res == ((void*)0)) {
  device_printf(dev, "could not map I/O memory\n");
  return (ENXIO);
 }
 sc->sc_bst = rman_get_bustag(sc->sc_res);
 sc->sc_bsh = rman_get_bushandle(sc->sc_res);
 sc->sc_busnr = 0;

 ipreg = bus_read_4(sc->sc_res, REG_PEX_IP_BLK_REV1);
 sc->sc_ip_min = (ipreg & IP_MN_M) >> IP_MN_S;
 sc->sc_ip_maj = (ipreg & IP_MJ_M) >> IP_MJ_S;
 mtx_init(&sc->sc_cfg_mtx, "pcicfg", ((void*)0), MTX_SPIN);

 cfgreg = fsl_pcib_cfgread(sc, 0, 0, 0, PCIR_VENDOR, 2);
 if (cfgreg != 0x1057 && cfgreg != 0x1957)
  goto err;

 capptr = fsl_pcib_cfgread(sc, 0, 0, 0, PCIR_CAP_PTR, 1);
 while (capptr != 0) {
  cfgreg = fsl_pcib_cfgread(sc, 0, 0, 0, capptr, 2);
  switch (cfgreg & 0xff) {
  case 128:
   break;
  case 129:
   sc->sc_pcie = 1;
   sc->sc_pcie_capreg = capptr;
   break;
  }
  capptr = (cfgreg >> 8) & 0xff;
 }

 node = ofw_bus_get_node(dev);





 error = ofw_pci_init(dev);
 if (error)
  return (error);




 if (fsl_pcib_decode_win(node, sc) != 0)
  goto err;

 cfgreg = fsl_pcib_cfgread(sc, 0, 0, 0, PCIR_COMMAND, 2);
 cfgreg |= PCIM_CMD_SERRESPEN | PCIM_CMD_BUSMASTEREN | PCIM_CMD_MEMEN |
     PCIM_CMD_PORTEN;
 fsl_pcib_cfgwrite(sc, 0, 0, 0, PCIR_COMMAND, cfgreg, 2);


 brctl = fsl_pcib_read_config(sc->sc_dev, 0, 0, 0,
     PCIR_BRIDGECTL_1, 1);
 brctl |= PCIB_BCR_SECBUS_RESET;
 fsl_pcib_write_config(sc->sc_dev, 0, 0, 0,
     PCIR_BRIDGECTL_1, brctl, 1);
 DELAY(100000);
 brctl &= ~PCIB_BCR_SECBUS_RESET;
 fsl_pcib_write_config(sc->sc_dev, 0, 0, 0,
     PCIR_BRIDGECTL_1, brctl, 1);
 DELAY(100000);

 if (sc->sc_pcie) {
  ltssm = fsl_pcib_cfgread(sc, 0, 0, 0, PCIR_LTSSM, 1);
  if (ltssm < LTSSM_STAT_L0) {
   if (bootverbose)
    printf("PCI %d: no PCIE link, skipping\n",
        device_get_unit(dev));
   return (0);
  }
 }


 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->sc_irq_res == ((void*)0)) {
  error = fsl_pcib_detach(dev);
  if (error != 0) {
   device_printf(dev,
       "Detach of the driver failed with error %d\n",
       error);
  }
  return (ENXIO);
 }


 error = bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), fsl_pcib_err_intr, dev, &sc->sc_ih);
 if (error != 0) {
  device_printf(dev, "Could not setup irq, %d\n", error);
  sc->sc_ih = ((void*)0);
  error = fsl_pcib_detach(dev);
  if (error != 0) {
   device_printf(dev,
       "Detach of the driver failed with error %d\n",
       error);
  }
  return (ENXIO);
 }

 fsl_pcib_err_init(dev);

 return (ofw_pci_attach(dev));

err:
 return (ENXIO);
}
