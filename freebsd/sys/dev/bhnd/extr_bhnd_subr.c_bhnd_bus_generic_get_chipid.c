
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_chipid {int dummy; } ;
typedef int device_t ;


 struct bhnd_chipid const* BHND_BUS_GET_CHIPID (int *,int ) ;
 int * device_get_parent (int ) ;
 int panic (char*) ;

const struct bhnd_chipid *
bhnd_bus_generic_get_chipid(device_t dev, device_t child)
{
 if (device_get_parent(dev) != ((void*)0))
  return (BHND_BUS_GET_CHIPID(device_get_parent(dev), child));

 panic("missing BHND_BUS_GET_CHIPID()");
}
