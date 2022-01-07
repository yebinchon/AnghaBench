
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct ebus_devinfo {struct resource_list edi_rl; } ;
typedef int device_t ;


 struct ebus_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
ebus_get_resource_list(device_t dev, device_t child)
{
 struct ebus_devinfo *edi;

 edi = device_get_ivars(child);
 return (&edi->edi_rl);
}
