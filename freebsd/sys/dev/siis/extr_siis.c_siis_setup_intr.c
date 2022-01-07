
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siis_controller {TYPE_1__* interrupt; } ;
struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;
struct TYPE_2__ {void* argument; int * function; } ;


 int EINVAL ;
 int device_get_ivars (int ) ;
 struct siis_controller* device_get_softc (int ) ;
 int printf (char*) ;

__attribute__((used)) static int
siis_setup_intr(device_t dev, device_t child, struct resource *irq,
     int flags, driver_filter_t *filter, driver_intr_t *function,
     void *argument, void **cookiep)
{
 struct siis_controller *ctlr = device_get_softc(dev);
 int unit = (intptr_t)device_get_ivars(child);

 if (filter != ((void*)0)) {
  printf("siis.c: we cannot use a filter here\n");
  return (EINVAL);
 }
 ctlr->interrupt[unit].function = function;
 ctlr->interrupt[unit].argument = argument;
 return (0);
}
