
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_CHILD_PRESENT (int ,int ) ;
 int device_get_parent (int ) ;

int
bus_generic_child_present(device_t dev, device_t child)
{
 return (BUS_CHILD_PRESENT(device_get_parent(dev), dev));
}
