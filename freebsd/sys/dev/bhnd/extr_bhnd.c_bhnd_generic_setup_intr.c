
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int bus_generic_setup_intr (int ,int ,struct resource*,int,int *,int *,void*,void**) ;

int
bhnd_generic_setup_intr(device_t dev, device_t child, struct resource *irq,
    int flags, driver_filter_t *filter, driver_intr_t *intr, void *arg,
    void **cookiep)
{
 return (bus_generic_setup_intr(dev, child, irq, flags, filter, intr,
     arg, cookiep));
}
