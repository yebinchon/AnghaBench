
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ driver_t ;
typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int ,int ,int) ;
 int KBDC_RID_AUX ;
 int PSMCPNP_DRIVER_NAME ;
 int SYS_RES_IRQ ;
 int bus_delete_resource (int *,int ,int ) ;
 scalar_t__ bus_get_resource_start (int *,int ,int ) ;
 int bus_set_resource (int *,int ,int ,scalar_t__,int) ;
 int * device_find_child (int ,int ,int) ;
 int device_get_parent (int *) ;
 int device_get_unit (int *) ;

__attribute__((used)) static void
psmidentify(driver_t *driver, device_t parent)
{
 device_t psmc;
 device_t psm;
 u_long irq;
 int unit;

 unit = device_get_unit(parent);


 psm = BUS_ADD_CHILD(parent, KBDC_RID_AUX, driver->name, unit);
 if (psm == ((void*)0))
  return;

 irq = bus_get_resource_start(psm, SYS_RES_IRQ, KBDC_RID_AUX);
 if (irq > 0)
  return;






 psmc = device_find_child(device_get_parent(parent),
     PSMCPNP_DRIVER_NAME, unit);
 if (psmc == ((void*)0))
  return;
 irq = bus_get_resource_start(psmc, SYS_RES_IRQ, 0);
 if (irq <= 0)
  return;
 bus_delete_resource(psmc, SYS_RES_IRQ, 0);
 bus_set_resource(psm, SYS_RES_IRQ, KBDC_RID_AUX, irq, 1);
}
