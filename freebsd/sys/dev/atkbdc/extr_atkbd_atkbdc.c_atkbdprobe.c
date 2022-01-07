
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct resource {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int KBDC_RID_KBD ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int atkbd_probe_unit (int ,int ,int) ;
 scalar_t__ bootverbose ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int device_get_flags (int ) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static int
atkbdprobe(device_t dev)
{
 struct resource *res;
 u_long irq;
 int flags;
 int rid;

 device_set_desc(dev, "AT Keyboard");


 flags = device_get_flags(dev);


 rid = KBDC_RID_KBD;
 res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
 if (res == ((void*)0)) {
  if (bootverbose)
   device_printf(dev, "unable to allocate IRQ\n");
  return ENXIO;
 }
 irq = rman_get_start(res);
 bus_release_resource(dev, SYS_RES_IRQ, rid, res);


 return atkbd_probe_unit(dev, irq, flags);
}
