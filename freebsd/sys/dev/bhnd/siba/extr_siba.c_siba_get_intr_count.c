
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int intr_en; } ;
struct siba_devinfo {TYPE_1__ core_id; } ;
typedef scalar_t__ device_t ;


 int BHND_BUS_GET_INTR_COUNT (scalar_t__,scalar_t__) ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;

u_int
siba_get_intr_count(device_t dev, device_t child)
{
 struct siba_devinfo *dinfo;


 if (device_get_parent(child) != dev)
  return (BHND_BUS_GET_INTR_COUNT(device_get_parent(dev), child));

 dinfo = device_get_ivars(child);
 if (!dinfo->core_id.intr_en) {

  return (0);
 } else {

  return (1);
 }
}
