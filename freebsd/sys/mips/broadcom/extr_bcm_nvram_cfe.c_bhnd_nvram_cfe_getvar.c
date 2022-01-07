
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_cfe_softc {int store; } ;
typedef int device_t ;
typedef int bhnd_nvram_type ;


 int bhnd_nvram_store_getvar (int ,char const*,void*,size_t*,int ) ;
 struct bhnd_nvram_cfe_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_nvram_cfe_getvar(device_t dev, const char *name, void *buf, size_t *len,
    bhnd_nvram_type type)
{
 struct bhnd_nvram_cfe_softc *sc = device_get_softc(dev);

 return (bhnd_nvram_store_getvar(sc->store, name, buf, len, type));
}
