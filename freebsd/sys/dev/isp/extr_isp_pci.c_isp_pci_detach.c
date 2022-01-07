
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * ptr; } ;
struct TYPE_12__ {TYPE_2__ pc; } ;
struct TYPE_13__ {int isp_nirq; int isp_lock; TYPE_3__ isp_osinfo; int * isp_param; } ;
struct isp_pcisoftc {TYPE_4__ pci_isp; scalar_t__ regs2; int rgd2; int rtp2; scalar_t__ regs1; int rgd1; int rtp1; scalar_t__ regs; int rgd; int rtp; scalar_t__ msicount; TYPE_1__* irq; } ;
typedef TYPE_4__ ispsoftc_t ;
typedef int device_t ;
struct TYPE_10__ {scalar_t__ irq; int iqd; int ih; } ;


 int ISP_LOCK (TYPE_4__*) ;
 int ISP_UNLOCK (TYPE_4__*) ;
 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,int ) ;
 struct isp_pcisoftc* device_get_softc (int ) ;
 int free (int *,int ) ;
 int isp_detach (TYPE_4__*) ;
 int isp_pci_mbxdmafree (TYPE_4__*) ;
 int isp_shutdown (TYPE_4__*) ;
 int mtx_destroy (int *) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static int
isp_pci_detach(device_t dev)
{
 struct isp_pcisoftc *pcs = device_get_softc(dev);
 ispsoftc_t *isp = &pcs->pci_isp;
 int i, status;

 status = isp_detach(isp);
 if (status)
  return (status);
 ISP_LOCK(isp);
 isp_shutdown(isp);
 ISP_UNLOCK(isp);
 for (i = 0; i < isp->isp_nirq; i++) {
  (void) bus_teardown_intr(dev, pcs->irq[i].irq, pcs->irq[i].ih);
  (void) bus_release_resource(dev, SYS_RES_IRQ, pcs->irq[i].iqd,
      pcs->irq[i].irq);
 }
 if (pcs->msicount)
  pci_release_msi(dev);
 (void) bus_release_resource(dev, pcs->rtp, pcs->rgd, pcs->regs);
 if (pcs->regs1)
  (void) bus_release_resource(dev, pcs->rtp1, pcs->rgd1, pcs->regs1);
 if (pcs->regs2)
  (void) bus_release_resource(dev, pcs->rtp2, pcs->rgd2, pcs->regs2);
 isp_pci_mbxdmafree(isp);
 if (pcs->pci_isp.isp_param) {
  free(pcs->pci_isp.isp_param, M_DEVBUF);
  pcs->pci_isp.isp_param = ((void*)0);
 }
 if (pcs->pci_isp.isp_osinfo.pc.ptr) {
  free(pcs->pci_isp.isp_osinfo.pc.ptr, M_DEVBUF);
  pcs->pci_isp.isp_osinfo.pc.ptr = ((void*)0);
 }
 mtx_destroy(&isp->isp_lock);
 return (0);
}
