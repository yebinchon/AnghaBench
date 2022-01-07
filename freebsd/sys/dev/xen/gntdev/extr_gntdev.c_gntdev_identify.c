
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int ,char*,int ) ;
 int KASSERT (int ,char*) ;
 int panic (char*) ;
 int xen_domain () ;

__attribute__((used)) static void
gntdev_identify(driver_t *driver, device_t parent)
{

 KASSERT((xen_domain()),
     ("Trying to attach gntdev device on non Xen domain"));

 if (BUS_ADD_CHILD(parent, 0, "gntdev", 0) == ((void*)0))
  panic("unable to attach gntdev user-space device");
}
