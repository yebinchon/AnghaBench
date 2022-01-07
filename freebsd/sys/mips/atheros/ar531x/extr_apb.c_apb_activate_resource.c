
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int BUS_ACTIVATE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
apb_activate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{


 return (BUS_ACTIVATE_RESOURCE(device_get_parent(bus), child,
  type, rid, r));
}
