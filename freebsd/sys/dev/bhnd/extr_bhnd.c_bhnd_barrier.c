
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_resource {int dummy; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int BHND_BUS_BARRIER (int ,int ,struct bhnd_resource*,int ,int ,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static void
bhnd_barrier(device_t dev, device_t child, struct bhnd_resource *r,
    bus_size_t offset, bus_size_t length, int flags)
{
 BHND_BUS_BARRIER(device_get_parent(dev), child, r, offset, length,
     flags);
}
