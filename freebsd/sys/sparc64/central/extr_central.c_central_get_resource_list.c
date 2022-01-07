
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct central_devinfo {struct resource_list cdi_rl; } ;
typedef int device_t ;


 struct central_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
central_get_resource_list(device_t bus, device_t child)
{
 struct central_devinfo *cdi;

 cdi = device_get_ivars(child);
 return (&cdi->cdi_rl);
}
