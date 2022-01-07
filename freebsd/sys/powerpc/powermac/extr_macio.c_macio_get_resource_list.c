
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct macio_devinfo {struct resource_list mdi_resources; } ;
typedef int device_t ;


 struct macio_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
macio_get_resource_list (device_t dev, device_t child)
{
 struct macio_devinfo *dinfo;

 dinfo = device_get_ivars(child);
 return (&dinfo->mdi_resources);
}
