
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct fdc_data {struct resource* res_drq; int rid_drq; struct resource** resio; int * ridio; struct resource* res_irq; int rid_irq; int * fdc_intr; int fdc_dev; } ;
typedef int device_t ;


 int FDC_MAXREG ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,struct resource*) ;
 int bus_teardown_intr (int ,struct resource*,int *) ;

void
fdc_release_resources(struct fdc_data *fdc)
{
 device_t dev;
 struct resource *last;
 int i;

 dev = fdc->fdc_dev;
 if (fdc->fdc_intr)
  bus_teardown_intr(dev, fdc->res_irq, fdc->fdc_intr);
 fdc->fdc_intr = ((void*)0);
 if (fdc->res_irq != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, fdc->rid_irq,
      fdc->res_irq);
 fdc->res_irq = ((void*)0);
 last = ((void*)0);
 for (i = 0; i < FDC_MAXREG; i++) {
  if (fdc->resio[i] != ((void*)0) && fdc->resio[i] != last) {
   bus_release_resource(dev, SYS_RES_IOPORT,
       fdc->ridio[i], fdc->resio[i]);
   last = fdc->resio[i];
   fdc->resio[i] = ((void*)0);
  }
 }
 if (fdc->res_drq != ((void*)0))
  bus_release_resource(dev, SYS_RES_DRQ, fdc->rid_drq,
      fdc->res_drq);
 fdc->res_drq = ((void*)0);
}
