
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_sprom_softc {int store; } ;
typedef int device_t ;
typedef int bhnd_nvram_type ;


 int bhnd_nvram_store_setvar (int ,char const*,void const*,size_t,int ) ;
 struct bhnd_sprom_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_sprom_setvar_method(device_t dev, const char *name, const void *buf,
    size_t len, bhnd_nvram_type type)
{
 struct bhnd_sprom_softc *sc = device_get_softc(dev);

 return (bhnd_nvram_store_setvar(sc->store, name, buf, len, type));
}
