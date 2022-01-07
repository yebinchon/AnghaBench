
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct unin_chip_devinfo {struct resource_list udi_resources; } ;
typedef int device_t ;


 struct unin_chip_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
unin_chip_get_resource_list (device_t dev, device_t child)
{
 struct unin_chip_devinfo *dinfo;

 dinfo = device_get_ivars(child);
 return (&dinfo->udi_resources);
}
