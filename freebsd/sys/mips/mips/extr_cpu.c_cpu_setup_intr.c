
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int cpu_establish_hardintr (int ,int *,int *,void*,int,int,void**) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int rman_activate_resource (struct resource*) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static int
cpu_setup_intr(device_t dev, device_t child, struct resource *res, int flags,
        driver_filter_t *filt, driver_intr_t *handler, void *arg,
        void **cookiep)
{
 int error;
 int intr;

 error = rman_activate_resource(res);
 if (error != 0) {
  device_printf(child, "could not activate irq\n");
  return (error);
 }

 intr = rman_get_start(res);

 cpu_establish_hardintr(device_get_nameunit(child), filt, handler, arg,
     intr, flags, cookiep);
 device_printf(child, "established CPU interrupt %d\n", intr);
 return (0);
}
