
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct isp_pcisoftc {int msicount; TYPE_2__* irq; } ;
struct TYPE_11__ {int dev; } ;
struct TYPE_13__ {int isp_nirq; TYPE_1__ isp_osinfo; } ;
typedef TYPE_3__ ispsoftc_t ;
typedef int driver_intr_t ;
typedef int device_t ;
struct TYPE_12__ {int iqd; int ih; int * irq; } ;


 scalar_t__ ISP_CAP_MSIX (TYPE_3__*) ;
 int ISP_IFLAGS ;
 int ISP_LOCK (TYPE_3__*) ;
 int ISP_MAX_IRQS ;
 int ISP_UNLOCK (TYPE_3__*) ;
 scalar_t__ IS_25XX (TYPE_3__*) ;
 scalar_t__ IS_26XX (TYPE_3__*) ;
 int MAX (int,int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_describe_intr (int ,int *,int ,char*,int) ;
 int bus_release_resource (int ,int ,int,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int *,int *,TYPE_3__*,int *) ;
 int device_get_name (int ) ;
 struct isp_pcisoftc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 void* imin (int,int) ;
 int * isp_platform_intr ;
 int * isp_platform_intr_atio ;
 int * isp_platform_intr_resp ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 scalar_t__ pci_alloc_msix (int ,int*) ;
 int pci_msi_count (int ) ;
 int pci_msix_count (int ) ;
 int resource_int_value (int ,int ,char*,int*) ;

__attribute__((used)) static int
isp_pci_irqsetup(ispsoftc_t *isp)
{
 device_t dev = isp->isp_osinfo.dev;
 struct isp_pcisoftc *pcs = device_get_softc(dev);
 driver_intr_t *f;
 int i, max_irq;


 if (isp->isp_nirq > 0)
  return (0);

 ISP_UNLOCK(isp);
 if (ISP_CAP_MSIX(isp)) {
  max_irq = IS_26XX(isp) ? 3 : (IS_25XX(isp) ? 2 : 0);
  resource_int_value(device_get_name(dev),
      device_get_unit(dev), "msix", &max_irq);
  max_irq = imin(ISP_MAX_IRQS, max_irq);
  pcs->msicount = imin(pci_msix_count(dev), max_irq);
  if (pcs->msicount > 0 &&
      pci_alloc_msix(dev, &pcs->msicount) != 0)
   pcs->msicount = 0;
 }
 if (pcs->msicount == 0) {
  max_irq = 1;
  resource_int_value(device_get_name(dev),
      device_get_unit(dev), "msi", &max_irq);
  max_irq = imin(1, max_irq);
  pcs->msicount = imin(pci_msi_count(dev), max_irq);
  if (pcs->msicount > 0 &&
      pci_alloc_msi(dev, &pcs->msicount) != 0)
   pcs->msicount = 0;
 }
 for (i = 0; i < MAX(1, pcs->msicount); i++) {
  pcs->irq[i].iqd = i + (pcs->msicount > 0);
  pcs->irq[i].irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
      &pcs->irq[i].iqd, RF_ACTIVE | RF_SHAREABLE);
  if (pcs->irq[i].irq == ((void*)0)) {
   device_printf(dev, "could not allocate interrupt\n");
   break;
  }
  if (i == 0)
   f = isp_platform_intr;
  else if (i == 1)
   f = isp_platform_intr_resp;
  else
   f = isp_platform_intr_atio;
  if (bus_setup_intr(dev, pcs->irq[i].irq, ISP_IFLAGS, ((void*)0),
      f, isp, &pcs->irq[i].ih)) {
   device_printf(dev, "could not setup interrupt\n");
   (void) bus_release_resource(dev, SYS_RES_IRQ,
       pcs->irq[i].iqd, pcs->irq[i].irq);
   break;
  }
  if (pcs->msicount > 1) {
   bus_describe_intr(dev, pcs->irq[i].irq, pcs->irq[i].ih,
       "%d", i);
  }
  isp->isp_nirq = i + 1;
 }
 ISP_LOCK(isp);

 return (isp->isp_nirq == 0);
}
