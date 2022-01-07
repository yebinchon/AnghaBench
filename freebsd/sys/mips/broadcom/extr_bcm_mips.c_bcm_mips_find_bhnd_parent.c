
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;
typedef scalar_t__ devclass_t ;


 scalar_t__ devclass_find (char*) ;
 scalar_t__ device_get_devclass (int *) ;
 int * device_get_parent (int *) ;

__attribute__((used)) static device_t
bcm_mips_find_bhnd_parent(device_t dev)
{
 device_t core, bus;
 devclass_t bhnd_class;

 bhnd_class = devclass_find("bhnd");
 core = dev;
 while ((bus = device_get_parent(core)) != ((void*)0)) {
  if (device_get_devclass(bus) == bhnd_class)
   return (core);

  core = bus;
 }


 return (((void*)0));
}
