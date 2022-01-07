
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;
typedef int bhnd_nvram_type ;


 int BHND_BUS_GET_NVRAM_VAR (int *,int *,char const*,void*,size_t*,int ) ;
 int BHND_NVRAM_GETVAR (int *,char const*,void*,size_t*,int ) ;
 int ENODEV ;
 int GIANT_REQUIRED ;
 int * device_find_child (int *,char*,int) ;
 int * device_get_parent (int *) ;

int
bhnd_bus_generic_get_nvram_var(device_t dev, device_t child, const char *name,
    void *buf, size_t *size, bhnd_nvram_type type)
{
 device_t nvram;
 device_t parent;


 GIANT_REQUIRED;


 if ((nvram = device_find_child(dev, "bhnd_nvram", -1)) != ((void*)0))
  return BHND_NVRAM_GETVAR(nvram, name, buf, size, type);


 if ((parent = device_get_parent(dev)) == ((void*)0))
  return (ENODEV);

 return (BHND_BUS_GET_NVRAM_VAR(device_get_parent(dev), child,
     name, buf, size, type));
}
