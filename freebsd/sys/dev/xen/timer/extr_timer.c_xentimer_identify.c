
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char*,int ) ;
 scalar_t__ devclass_get_device (int ,int ) ;
 int xen_domain () ;
 int xentimer_devclass ;

__attribute__((used)) static void
xentimer_identify(driver_t *driver, device_t parent)
{
 if (!xen_domain())
  return;


 if (devclass_get_device(xentimer_devclass, 0))
  return;

 BUS_ADD_CHILD(parent, 0, "xen_et", 0);
}
