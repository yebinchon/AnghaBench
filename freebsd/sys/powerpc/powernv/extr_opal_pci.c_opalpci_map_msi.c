
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ msi_alloc; int msi_ctrl; } ;
struct TYPE_4__ {TYPE_1__ msi; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
struct opalpci_softc {int base_msi_irq; int msi_base; int phb_id; int * msi_vmem; } ;
typedef int device_t ;


 int ENODEV ;
 int ENXIO ;
 int OPAL_GET_MSI_32 ;
 int OPAL_GET_MSI_64 ;
 int OPAL_PCI_DEFAULT_PE ;
 int OPAL_PCI_SET_XIVE_PE ;
 int PCIM_MSICTRL_64BIT ;
 int be32toh (int ) ;
 int be64toh (int ) ;
 scalar_t__ bootverbose ;
 struct pci_devinfo* device_get_ivars (int ) ;
 struct opalpci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int opal_call (int ,int ,int ,int,...) ;
 int vtophys (int *) ;

__attribute__((used)) static int
opalpci_map_msi(device_t dev, device_t child, int irq, uint64_t *addr,
    uint32_t *data)
{
 struct opalpci_softc *sc;
 struct pci_devinfo *dinfo;
 int err, xive;

 sc = device_get_softc(dev);
 if (sc->msi_vmem == ((void*)0))
  return (ENODEV);

 xive = irq - sc->base_msi_irq - sc->msi_base;
 opal_call(OPAL_PCI_SET_XIVE_PE, sc->phb_id, OPAL_PCI_DEFAULT_PE, xive);

 dinfo = device_get_ivars(child);
 if (dinfo->cfg.msi.msi_alloc > 0 &&
     (dinfo->cfg.msi.msi_ctrl & PCIM_MSICTRL_64BIT) == 0) {
  uint32_t msi32;
  err = opal_call(OPAL_GET_MSI_32, sc->phb_id,
      OPAL_PCI_DEFAULT_PE, xive, 1, vtophys(&msi32),
      vtophys(data));
  *addr = be32toh(msi32);
 } else {
  err = opal_call(OPAL_GET_MSI_64, sc->phb_id,
      OPAL_PCI_DEFAULT_PE, xive, 1, vtophys(addr), vtophys(data));
  *addr = be64toh(*addr);
 }
 *data = be32toh(*data);

 if (bootverbose && err != 0)
  device_printf(child, "OPAL MSI mapping error: %d\n", err);

 return ((err == 0) ? 0 : ENXIO);
}
