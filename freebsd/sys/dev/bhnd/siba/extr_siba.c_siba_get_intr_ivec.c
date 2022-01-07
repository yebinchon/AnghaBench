
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {int intr_en; scalar_t__ intr_flag; } ;
struct siba_devinfo {TYPE_1__ core_id; } ;
typedef scalar_t__ device_t ;


 int BHND_BUS_GET_INTR_IVEC (scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 scalar_t__ siba_get_intr_count (scalar_t__,scalar_t__) ;

int
siba_get_intr_ivec(device_t dev, device_t child, u_int intr, u_int *ivec)
{
 struct siba_devinfo *dinfo;


 if (device_get_parent(child) != dev)
  return (BHND_BUS_GET_INTR_IVEC(device_get_parent(dev), child,
      intr, ivec));


 if (intr >= siba_get_intr_count(dev, child))
  return (ENXIO);

 KASSERT(intr == 0, ("invalid ivec %u", intr));

 dinfo = device_get_ivars(child);

 KASSERT(dinfo->core_id.intr_en,
     ("core does not have an interrupt assigned"));

 *ivec = dinfo->core_id.intr_flag;
 return (0);
}
