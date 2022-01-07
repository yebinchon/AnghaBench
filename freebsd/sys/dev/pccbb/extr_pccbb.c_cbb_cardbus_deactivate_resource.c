
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int BUS_DEACTIVATE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int cbb_cardbus_auto_open (int ,int) ;
 int device_get_parent (int ) ;
 int device_get_softc (int ) ;

__attribute__((used)) static int
cbb_cardbus_deactivate_resource(device_t brdev, device_t child, int type,
    int rid, struct resource *res)
{
 int ret;

 ret = BUS_DEACTIVATE_RESOURCE(device_get_parent(brdev), child,
     type, rid, res);
 if (ret != 0)
  return (ret);
 cbb_cardbus_auto_open(device_get_softc(brdev), type);
 return (0);
}
