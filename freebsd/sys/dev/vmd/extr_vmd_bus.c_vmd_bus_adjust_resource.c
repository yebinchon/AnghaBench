
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_generic_adjust_resource (int ,int ,int,struct resource*,int ,int ) ;

__attribute__((used)) static int
vmd_bus_adjust_resource(device_t dev, device_t child, int type,
    struct resource *r, rman_res_t start, rman_res_t end)
{
 struct resource *res = r;
 if (type == SYS_RES_MEMORY) {

  return (0);
 }

 return (bus_generic_adjust_resource(dev, child, type, res, start, end));
}
