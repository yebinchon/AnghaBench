
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct resource_list {int dummy; } ;
struct nexus_device {struct resource_list nx_resources; } ;
typedef int device_t ;


 struct nexus_device* DEVTONX (int ) ;
 int resource_list_add (struct resource_list*,int,int,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
nexus_set_resource(device_t dev, device_t child, int type, int rid,
    u_long start, u_long count)
{
 struct nexus_device *ndev = DEVTONX(child);
 struct resource_list *rl = &ndev->nx_resources;


 resource_list_add(rl, type, rid, start, start + count - 1, count);

 return(0);
}
