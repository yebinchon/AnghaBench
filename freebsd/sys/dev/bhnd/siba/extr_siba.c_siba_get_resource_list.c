
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct siba_devinfo {struct resource_list resources; } ;
typedef int device_t ;


 struct siba_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
siba_get_resource_list(device_t dev, device_t child)
{
 struct siba_devinfo *dinfo = device_get_ivars(child);
 return (&dinfo->resources);
}
