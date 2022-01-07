
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_data {int ppc_lock; int * ppc_irq_res; } ;
typedef int device_t ;


 int BUS_READ_IVAR (int ,int ,int ,uintptr_t*) ;
 int BUS_WRITE_IVAR (int ,int ,int ,uintptr_t) ;
 int PPC_IVAR_INTR_HANDLER ;
 int PPC_IVAR_LOCK ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int device_get_parent (int ) ;
 struct ppb_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;
 int ppb_scan_bus (int ) ;
 int ppbus_intr ;

__attribute__((used)) static int
ppbus_attach(device_t dev)
{
 struct ppb_data *ppb = device_get_softc(dev);
 int error, rid;

 error = BUS_READ_IVAR(device_get_parent(dev), dev, PPC_IVAR_LOCK,
     (uintptr_t *)&ppb->ppc_lock);
 if (error) {
  device_printf(dev, "Unable to fetch parent's lock\n");
  return (error);
 }

 rid = 0;
 ppb->ppc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE);
 if (ppb->ppc_irq_res != ((void*)0)) {
  mtx_lock(ppb->ppc_lock);
  error = BUS_WRITE_IVAR(device_get_parent(dev), dev,
      PPC_IVAR_INTR_HANDLER, (uintptr_t)&ppbus_intr);
  mtx_unlock(ppb->ppc_lock);
  if (error) {
   device_printf(dev, "Unable to set interrupt handler\n");
   return (error);
  }
 }


 bus_generic_probe(dev);



 mtx_lock(ppb->ppc_lock);
 ppb_scan_bus(dev);
 mtx_unlock(ppb->ppc_lock);



 bus_generic_attach(dev);

 return (0);
}
