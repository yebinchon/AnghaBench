
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;
typedef scalar_t__ devclass_t ;


 int KASSERT (int,char*) ;
 scalar_t__ bhnd_devclass ;
 scalar_t__ devclass_find (char*) ;
 scalar_t__ device_get_devclass (int *) ;
 int device_get_nameunit (int *) ;
 int * device_get_parent (int *) ;

device_t
bhnd_find_bridge_root(device_t dev, devclass_t bus_class)
{
 devclass_t bhndb_class;
 device_t parent;

 KASSERT(device_get_devclass(device_get_parent(dev)) == bhnd_devclass,
    ("%s not a bhnd device", device_get_nameunit(dev)));

 bhndb_class = devclass_find("bhndb");


 parent = dev;
 while ((parent = device_get_parent(parent)) != ((void*)0)) {
  if (device_get_devclass(parent) == bhndb_class)
   break;
 }


 if (parent == ((void*)0))
  return (((void*)0));


 while ((parent = device_get_parent(parent)) != ((void*)0)) {
  device_t bus;

  bus = device_get_parent(parent);
  if (bus != ((void*)0) && device_get_devclass(bus) == bus_class)
   return (parent);
 }


 return (((void*)0));
}
