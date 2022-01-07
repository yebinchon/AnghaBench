
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int BUS_SETUP_INTR (int ,int ,struct resource*,int,int *,int *,void*,void**) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
gt_setup_intr(device_t dev, device_t child,
    struct resource *ires, int flags, driver_filter_t *filt,
    driver_intr_t *intr, void *arg, void **cookiep)
{
 return BUS_SETUP_INTR(device_get_parent(dev), child, ires, flags,
     filt, intr, arg, cookiep);
}
