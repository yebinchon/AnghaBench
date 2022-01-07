
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
 scalar_t__ xen_hvm_domain () ;
 int xen_vector_callback_enabled ;

__attribute__((used)) static void
xendebug_identify(driver_t *driver, device_t parent)
{

 KASSERT(xen_domain(),
     ("Trying to add Xen debug device to non-xen guest"));

 if (xen_hvm_domain() && !xen_vector_callback_enabled)
  return;

 if (BUS_ADD_CHILD(parent, 0, "debug", 0) == ((void*)0))
  panic("Unable to add Xen debug device.");
}
