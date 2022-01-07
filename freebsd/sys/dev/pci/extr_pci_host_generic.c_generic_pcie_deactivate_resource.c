
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int BUS_DEACTIVATE_RESOURCE (int ,int ,int,int,struct resource*) ;



 int device_get_parent (int ) ;
 int rman_deactivate_resource (struct resource*) ;

__attribute__((used)) static int
generic_pcie_deactivate_resource(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
 int res;

 if ((res = rman_deactivate_resource(r)) != 0)
  return (res);

 switch (type) {
 case 130:
 case 128:
 case 129:
  res = BUS_DEACTIVATE_RESOURCE(device_get_parent(dev), child,
      type, rid, r);
  break;
 default:
  break;
 }

 return (res);
}
