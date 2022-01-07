
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ device_t ;


 int BUS_RESUME_CHILD (scalar_t__,scalar_t__) ;
 int bus_generic_resume_child (scalar_t__,scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;

int
bhnd_generic_resume_child(device_t dev, device_t child)
{
 if (device_get_parent(child) != dev)
  BUS_RESUME_CHILD(device_get_parent(dev), child);

 return bus_generic_resume_child(dev, child);
}
