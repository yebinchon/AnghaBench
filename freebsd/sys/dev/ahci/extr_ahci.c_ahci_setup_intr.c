
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct ahci_controller {TYPE_1__* interrupt; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;
struct TYPE_2__ {void* argument; int * function; } ;


 intptr_t AHCI_UNIT ;
 int EINVAL ;
 scalar_t__ device_get_ivars (int ) ;
 struct ahci_controller* device_get_softc (int ) ;
 int printf (char*) ;

int
ahci_setup_intr(device_t dev, device_t child, struct resource *irq,
    int flags, driver_filter_t *filter, driver_intr_t *function,
    void *argument, void **cookiep)
{
 struct ahci_controller *ctlr = device_get_softc(dev);
 int unit = (intptr_t)device_get_ivars(child) & AHCI_UNIT;

 if (filter != ((void*)0)) {
  printf("ahci.c: we cannot use a filter here\n");
  return (EINVAL);
 }
 ctlr->interrupt[unit].function = function;
 ctlr->interrupt[unit].argument = argument;
 return (0);
}
