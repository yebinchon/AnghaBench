
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct isa_device {struct resource_list id_resources; } ;
typedef int device_t ;


 struct isa_device* DEVTOISA (int ) ;
 int resource_list_release (struct resource_list*,int ,int ,int,int,struct resource*) ;

int
isa_release_resource(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
 struct isa_device* idev = DEVTOISA(child);
 struct resource_list *rl = &idev->id_resources;

 return (resource_list_release(rl, bus, child, type, rid, r));
}
