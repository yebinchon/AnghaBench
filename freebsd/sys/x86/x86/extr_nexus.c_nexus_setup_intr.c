
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int driver_filter_t ;
typedef int device_t ;


 int INTR_EXCL ;
 int RF_SHAREABLE ;
 scalar_t__ bus_get_domain (int ,int*) ;
 int device_get_nameunit (int ) ;
 int intr_add_handler (int ,int ,int ,void (*) (void*),void*,int,void**,int) ;
 int panic (char*) ;
 int rman_activate_resource (struct resource*) ;
 int rman_get_flags (struct resource*) ;
 int rman_get_start (struct resource*) ;
 int rman_set_irq_cookie (struct resource*,void*) ;

__attribute__((used)) static int
nexus_setup_intr(device_t bus, device_t child, struct resource *irq,
   int flags, driver_filter_t filter, void (*ihand)(void *),
   void *arg, void **cookiep)
{
 int error, domain;


 if (irq == ((void*)0))
  panic("nexus_setup_intr: NULL irq resource!");

 *cookiep = ((void*)0);
 if ((rman_get_flags(irq) & RF_SHAREABLE) == 0)
  flags |= INTR_EXCL;




 error = rman_activate_resource(irq);
 if (error)
  return (error);
 if (bus_get_domain(child, &domain) != 0)
  domain = 0;

 error = intr_add_handler(device_get_nameunit(child),
     rman_get_start(irq), filter, ihand, arg, flags, cookiep, domain);
 if (error == 0)
  rman_set_irq_cookie(irq, *cookiep);

 return (error);
}
