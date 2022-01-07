
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_DELETE_RESOURCE (int ,int ,int,int) ;
 int device_get_parent (int ) ;

void
bus_delete_resource(device_t dev, int type, int rid)
{
 BUS_DELETE_RESOURCE(device_get_parent(dev), dev, type, rid);
}
