
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
typedef int bus_space_tag_t ;
struct TYPE_5__ {int * parent; } ;


 int BUS_GET_BUS_TAG (int *,TYPE_1__*) ;

bus_space_tag_t
bus_generic_get_bus_tag(device_t dev, device_t child)
{


 if (dev->parent != ((void*)0))
  return (BUS_GET_BUS_TAG(dev->parent, child));
 return ((bus_space_tag_t)0);
}
