
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct resource {int dummy; } ;
struct fdc_data {int* ridio; int* ioff; int flags; int dmachan; struct resource* res_drq; int rid_drq; int * res_irq; int rid_irq; void** ioh; struct resource** resio; int iot; int fdc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int FDC_MAXREG ;
 int FDC_NODMA ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 struct resource* bus_alloc_resource (int ,int ,int*,int,int,int,int) ;
 void* bus_alloc_resource_any (int ,int ,int *,int) ;
 struct resource* bus_alloc_resource_anywhere (int ,int ,int*,int,int) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int device_printf (int ,char*) ;
 scalar_t__ isa_get_logicalid (int ) ;
 void* rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 int rman_get_size (struct resource*) ;
 int rman_get_start (struct resource*) ;

int
fdc_isa_alloc_resources(device_t dev, struct fdc_data *fdc)
{
 struct resource *res;
 int i, j, rid, newrid, nport;
 u_long port;

 fdc->fdc_dev = dev;
 rid = 0;
 for (i = 0; i < FDC_MAXREG; i++)
  fdc->resio[i] = ((void*)0);

 nport = isa_get_logicalid(dev) ? 1 : 6;
 for (rid = 0; ; rid++) {
  newrid = rid;
  res = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT, &newrid,
      rid == 0 ? nport : 1, RF_ACTIVE);
  if (res == ((void*)0))
   break;




  i = rman_get_start(res) & 0x7;
  if (i + rman_get_size(res) - 1 > FDC_MAXREG) {
   bus_release_resource(dev, SYS_RES_IOPORT, newrid, res);
   return (ENXIO);
  }
  for (j = 0; j < rman_get_size(res); j++) {
   fdc->resio[i + j] = res;
   fdc->ridio[i + j] = newrid;
   fdc->ioff[i + j] = j;
   fdc->ioh[i + j] = rman_get_bushandle(res);
  }
 }
 if (fdc->resio[2] == ((void*)0)) {
  device_printf(dev, "No FDOUT register!\n");
  return (ENXIO);
 }
 fdc->iot = rman_get_bustag(fdc->resio[2]);
 if (fdc->resio[7] == ((void*)0)) {
  port = (rman_get_start(fdc->resio[2]) & ~0x7) + 7;
  newrid = rid;
  res = bus_alloc_resource(dev, SYS_RES_IOPORT, &newrid, port,
      port, 1, RF_ACTIVE);
  if (res == ((void*)0)) {
   device_printf(dev, "Faking up FDCTL\n");
   fdc->resio[7] = fdc->resio[2];
   fdc->ridio[7] = fdc->ridio[2];
   fdc->ioff[7] = fdc->ioff[2] + 5;
   fdc->ioh[7] = fdc->ioh[2];
  } else {
   fdc->resio[7] = res;
   fdc->ridio[7] = newrid;
   fdc->ioff[7] = rman_get_start(res) & 7;
   fdc->ioh[7] = rman_get_bushandle(res);
  }
 }

 fdc->res_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &fdc->rid_irq,
     RF_ACTIVE | RF_SHAREABLE);
 if (fdc->res_irq == ((void*)0)) {
  device_printf(dev, "cannot reserve interrupt line\n");
  return (ENXIO);
 }

 if ((fdc->flags & FDC_NODMA) == 0) {
  fdc->res_drq = bus_alloc_resource_any(dev, SYS_RES_DRQ,
      &fdc->rid_drq, RF_ACTIVE | RF_SHAREABLE);
  if (fdc->res_drq == ((void*)0)) {
   device_printf(dev, "cannot reserve DMA request line\n");

   fdc->flags |= FDC_NODMA;
  } else
   fdc->dmachan = rman_get_start(fdc->res_drq);
 }

 return (0);
}
