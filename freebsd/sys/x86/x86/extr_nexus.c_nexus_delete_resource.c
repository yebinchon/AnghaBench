
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct nexus_device {struct resource_list nx_resources; } ;
typedef int device_t ;


 struct nexus_device* DEVTONX (int ) ;
 int resource_list_delete (struct resource_list*,int,int) ;

__attribute__((used)) static void
nexus_delete_resource(device_t dev, device_t child, int type, int rid)
{
 struct nexus_device *ndev = DEVTONX(child);
 struct resource_list *rl = &ndev->nx_resources;

 resource_list_delete(rl, type, rid);
}
