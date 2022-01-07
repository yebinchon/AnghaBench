
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int count; int start; } ;
struct quicc_device {int qd_rlist; } ;
typedef int rman_res_t ;
typedef scalar_t__ device_t ;


 int EINVAL ;
 struct quicc_device* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct resource_list_entry* resource_list_find (int *,int,int) ;

int
quicc_bus_get_resource(device_t dev, device_t child, int type, int rid,
    rman_res_t *startp, rman_res_t *countp)
{
 struct quicc_device *qd;
 struct resource_list_entry *rle;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 qd = device_get_ivars(child);
 rle = resource_list_find(&qd->qd_rlist, type, rid);
 if (rle == ((void*)0))
  return (EINVAL);

 if (startp != ((void*)0))
  *startp = rle->start;
 if (countp != ((void*)0))
  *countp = rle->count;
 return (0);
}
