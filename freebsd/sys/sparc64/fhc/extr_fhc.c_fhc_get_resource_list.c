
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct fhc_devinfo {struct resource_list fdi_rl; } ;
typedef int device_t ;


 struct fhc_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
fhc_get_resource_list(device_t bus, device_t child)
{
 struct fhc_devinfo *fdi;

 fdi = device_get_ivars(child);
 return (&fdi->fdi_rl);
}
