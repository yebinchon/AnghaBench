
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ device_t ;



uintptr_t
bhnd_bus_generic_get_intr_domain(device_t dev, device_t child, bool self)
{
 return ((uintptr_t)dev);
}
