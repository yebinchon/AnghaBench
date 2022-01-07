
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct resource* BUS_ALLOC_RESOURCE (int ,int ,int,int*,int ,int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static struct resource *
gt_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 return (BUS_ALLOC_RESOURCE(device_get_parent(dev), child,
      type, rid, start, end, count, flags));

}
