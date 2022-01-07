
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_softc {int dummy; } ;
typedef int * device_t ;
typedef int bhnd_nvram_type ;


 int BHND_BUS_GET_NVRAM_VAR (int *,int *,char const*,void*,size_t*,int ) ;
 int BHND_NVRAM_GETVAR (int *,char const*,void*,size_t*,int ) ;
 int BHND_SERVICE_NVRAM ;
 int ENODEV ;
 int bhnd_release_provider (int *,int *,int ) ;
 int * bhnd_retain_provider (int *,int ) ;
 int * device_get_parent (int *) ;
 struct bhnd_softc* device_get_softc (int *) ;

int
bhnd_generic_get_nvram_var(device_t dev, device_t child, const char *name,
    void *buf, size_t *size, bhnd_nvram_type type)
{
 struct bhnd_softc *sc;
 device_t nvram, parent;
 int error;

 sc = device_get_softc(dev);


 nvram = bhnd_retain_provider(child, BHND_SERVICE_NVRAM);
 if (nvram != ((void*)0)) {
  error = BHND_NVRAM_GETVAR(nvram, name, buf, size, type);
  bhnd_release_provider(child, nvram, BHND_SERVICE_NVRAM);
  return (error);
 }


 if ((parent = device_get_parent(dev)) == ((void*)0))
  return (ENODEV);

 return (BHND_BUS_GET_NVRAM_VAR(device_get_parent(dev), child,
     name, buf, size, type));
}
