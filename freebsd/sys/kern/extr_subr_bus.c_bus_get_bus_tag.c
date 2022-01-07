
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;
typedef int bus_space_tag_t ;


 int BUS_GET_BUS_TAG (int *,int *) ;
 int * device_get_parent (int *) ;

bus_space_tag_t
bus_get_bus_tag(device_t dev)
{
 device_t parent;

 parent = device_get_parent(dev);
 if (parent == ((void*)0))
  return ((bus_space_tag_t)0);
 return (BUS_GET_BUS_TAG(parent, dev));
}
