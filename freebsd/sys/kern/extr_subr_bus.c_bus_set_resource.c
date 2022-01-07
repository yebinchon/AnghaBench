
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rman_res_t ;
typedef int device_t ;


 int BUS_SET_RESOURCE (int ,int ,int,int,int ,int ) ;
 int device_get_parent (int ) ;

int
bus_set_resource(device_t dev, int type, int rid,
    rman_res_t start, rman_res_t count)
{
 return (BUS_SET_RESOURCE(device_get_parent(dev), dev, type, rid,
     start, count));
}
