
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bcma_devinfo {int num_intrs; } ;
typedef scalar_t__ device_t ;


 int BHND_BUS_GET_INTR_COUNT (scalar_t__,scalar_t__) ;
 struct bcma_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;

u_int
bcma_get_intr_count(device_t dev, device_t child)
{
 struct bcma_devinfo *dinfo;


 if (device_get_parent(child) != dev)
  return (BHND_BUS_GET_INTR_COUNT(device_get_parent(dev), child));

 dinfo = device_get_ivars(child);
 return (dinfo->num_intrs);
}
