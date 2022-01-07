
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int dummy; } ;
struct resource {int dummy; } ;
struct quicc_device {int qd_rlist; } ;
typedef scalar_t__ device_t ;


 int EINVAL ;
 struct quicc_device* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct resource_list_entry* resource_list_find (int *,int,int) ;

int
quicc_bus_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *res)
{
 struct quicc_device *qd;
 struct resource_list_entry *rle;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 qd = device_get_ivars(child);
 rle = resource_list_find(&qd->qd_rlist, type, rid);
 return ((rle == ((void*)0)) ? EINVAL : 0);
}
