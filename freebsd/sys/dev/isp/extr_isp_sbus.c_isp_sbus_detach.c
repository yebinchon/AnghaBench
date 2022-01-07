
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ isp_nirq; int isp_lock; } ;
struct isp_sbussoftc {int regs; int rgd; int irq; int iqd; int ih; TYPE_1__ sbus_isp; } ;
typedef TYPE_1__ ispsoftc_t ;
typedef int device_t ;


 int ISP_LOCK (TYPE_1__*) ;
 int ISP_UNLOCK (TYPE_1__*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct isp_sbussoftc* device_get_softc (int ) ;
 int isp_detach (TYPE_1__*) ;
 int isp_sbus_mbxdmafree (TYPE_1__*) ;
 int isp_shutdown (TYPE_1__*) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
isp_sbus_detach(device_t dev)
{
 struct isp_sbussoftc *sbs = device_get_softc(dev);
 ispsoftc_t *isp = &sbs->sbus_isp;
 int status;

 status = isp_detach(isp);
 if (status)
  return (status);
 ISP_LOCK(isp);
 isp_shutdown(isp);
 ISP_UNLOCK(isp);
 if (isp->isp_nirq > 0) {
  (void) bus_teardown_intr(dev, sbs->irq, sbs->ih);
  (void) bus_release_resource(dev, SYS_RES_IRQ, sbs->iqd,
      sbs->irq);
 }
 (void) bus_release_resource(dev, SYS_RES_MEMORY, sbs->rgd, sbs->regs);
 isp_sbus_mbxdmafree(isp);
 mtx_destroy(&isp->isp_lock);
 return (0);
}
