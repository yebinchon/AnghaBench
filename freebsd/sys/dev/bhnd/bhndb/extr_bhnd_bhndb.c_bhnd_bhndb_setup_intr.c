
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int * device_t ;


 int BHNDB_ROUTE_INTERRUPTS (int *,int *) ;
 int KASSERT (int ,char*) ;
 int bhnd_generic_setup_intr (int *,int *,struct resource*,int,int *,int *,void*,void**) ;
 int device_get_nameunit (int *) ;
 int * device_get_parent (int *) ;

__attribute__((used)) static int
bhnd_bhndb_setup_intr(device_t dev, device_t child, struct resource *irq,
    int flags, driver_filter_t *filter, driver_intr_t *intr, void *arg,
    void **cookiep)
{
 device_t core, bus;
 int error;


 core = child;
 while ((bus = device_get_parent(core)) != ((void*)0)) {
  if (bus == dev)
   break;

  core = bus;
 }

 KASSERT(core != ((void*)0), ("%s is not a child of %s",
     device_get_nameunit(child), device_get_nameunit(dev)));


 error = BHNDB_ROUTE_INTERRUPTS(device_get_parent(dev), core);
 if (error)
  return (error);



 return (bhnd_generic_setup_intr(dev, child, irq, flags, filter, intr,
     arg, cookiep));
}
