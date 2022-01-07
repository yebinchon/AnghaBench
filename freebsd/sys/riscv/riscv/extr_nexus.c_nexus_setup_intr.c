
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int INTR_EXCL ;
 int RF_SHAREABLE ;
 int intr_setup_irq (int ,struct resource*,int *,int *,void*,int,void**) ;
 int rman_activate_resource (struct resource*) ;
 int rman_get_flags (struct resource*) ;

__attribute__((used)) static int
nexus_setup_intr(device_t dev, device_t child, struct resource *res, int flags,
    driver_filter_t *filt, driver_intr_t *intr, void *arg, void **cookiep)
{
 int error;

 if ((rman_get_flags(res) & RF_SHAREABLE) == 0)
  flags |= INTR_EXCL;


 error = rman_activate_resource(res);
 if (error)
  return (error);

 error = intr_setup_irq(child, res, filt, intr, arg, flags, cookiep);

 return (error);
}
