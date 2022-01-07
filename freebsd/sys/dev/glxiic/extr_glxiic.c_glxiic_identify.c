
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ driver_t ;
typedef int device_t ;


 scalar_t__ GLXIIC_CS5536_DEV_ID ;
 int * device_add_child (int ,int ,int) ;
 int * device_find_child (int ,int ,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static void
glxiic_identify(driver_t *driver, device_t parent)
{


 if (device_find_child(parent, driver->name, -1) != ((void*)0))
  return;

 if (pci_get_devid(parent) == GLXIIC_CS5536_DEV_ID) {
  if (device_add_child(parent, driver->name, -1) == ((void*)0))
   device_printf(parent, "Could not add glxiic child\n");
 }
}
