
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int ,char*,int ) ;
 int UINT_MAX ;
 scalar_t__ devclass_get_device (int ,int ) ;
 int panic (char*) ;
 int xen_domain () ;
 int xenpv_devclass ;

__attribute__((used)) static void
xenpv_identify(driver_t *driver, device_t parent)
{
 if (!xen_domain())
  return;


 if (devclass_get_device(xenpv_devclass, 0))
  return;





 if (BUS_ADD_CHILD(parent, UINT_MAX, "xenpv", 0) == ((void*)0))
  panic("Unable to attach xenpv bus.");
}
