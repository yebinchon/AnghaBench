
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct fdc_data {int* ridio; int* ioff; int rid_irq; int * res_irq; int iot; int * ioh; struct resource** resio; } ;
typedef int device_t ;


 int ENXIO ;
 int FDC_MAXREG ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

__attribute__((used)) static int
fdc_pccard_alloc_resources(device_t dev, struct fdc_data *fdc)
{
 struct resource *res;
 int rid, i;

 rid = 0;
 res = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);
 if (res == ((void*)0)) {
  device_printf(dev, "cannot alloc I/O port range\n");
  return (ENXIO);
 }
 for (i = 0; i < FDC_MAXREG; i++) {
  fdc->resio[i] = res;
  fdc->ridio[i] = rid;
  fdc->ioff[i] = i;
  fdc->ioh[i] = rman_get_bushandle(res);
 }
 fdc->iot = rman_get_bustag(res);

 fdc->rid_irq = 0;
 fdc->res_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &fdc->rid_irq,
     RF_ACTIVE | RF_SHAREABLE);
 if (fdc->res_irq == ((void*)0)) {
  device_printf(dev, "cannot reserve interrupt line\n");
  return (ENXIO);
 }
 return (0);
}
