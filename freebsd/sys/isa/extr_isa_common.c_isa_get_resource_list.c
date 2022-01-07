
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct isa_device {struct resource_list id_resources; } ;
typedef int device_t ;


 struct isa_device* DEVTOISA (int ) ;

__attribute__((used)) static struct resource_list *
isa_get_resource_list (device_t dev, device_t child)
{
 struct isa_device* idev = DEVTOISA(child);
 struct resource_list *rl = &idev->id_resources;

 if (!rl)
  return (((void*)0));

 return (rl);
}
