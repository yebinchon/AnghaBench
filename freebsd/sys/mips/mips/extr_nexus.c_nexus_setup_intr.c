
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int register_t ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int NUM_MIPS_IRQS ;
 int cpu_establish_hardintr (int ,int *,int *,void*,int,int,void**) ;
 int device_get_nameunit (int ) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int intr_setup_irq (int ,struct resource*,int *,int *,void*,int,void**) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static int
nexus_setup_intr(device_t dev, device_t child, struct resource *res, int flags,
    driver_filter_t *filt, driver_intr_t *intr, void *arg, void **cookiep)
{



 int irq;
 register_t s;

 s = intr_disable();
 irq = rman_get_start(res);
 if (irq >= NUM_MIPS_IRQS) {
  intr_restore(s);
  return (0);
 }

 cpu_establish_hardintr(device_get_nameunit(child), filt, intr, arg,
     irq, flags, cookiep);
 intr_restore(s);

 return (0);

}
