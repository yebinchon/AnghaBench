
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int driver_t ;
typedef int * device_t ;
struct TYPE_3__ {scalar_t__ pci_id; int addr; int name; } ;


 int * BUS_ADD_CHILD (int *,int ,int ,int) ;
 int * device_find_child (int *,int ,int) ;
 int device_get_name (int *) ;
 int * device_get_parent (int *) ;
 int iicbus_set_addr (int *,int ) ;
 int nitems (TYPE_1__*) ;
 scalar_t__ pci_get_devid (int *) ;
 TYPE_1__* slaves ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
chromebook_i2c_identify(driver_t *driver, device_t bus)
{
 device_t controller;
 device_t child;
 int i;
 controller = device_get_parent(bus);
 if (strcmp(device_get_name(controller), "ig4iic") != 0)
  return;

 for (i = 0; i < nitems(slaves); i++) {
  if (device_find_child(bus, slaves[i].name, -1) != ((void*)0))
   continue;
  if (slaves[i].pci_id != pci_get_devid(controller))
   continue;
  child = BUS_ADD_CHILD(bus, 0, slaves[i].name, -1);
  if (child != ((void*)0))
   iicbus_set_addr(child, slaves[i].addr);
 }
}
