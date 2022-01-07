
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_service_registry {int dummy; } ;
struct bhndb_softc {struct bhnd_service_registry services; } ;
typedef int device_t ;


 struct bhndb_softc* device_get_softc (int ) ;

__attribute__((used)) static struct bhnd_service_registry *
bhndb_get_service_registry(device_t dev, device_t child)
{
 struct bhndb_softc *sc = device_get_softc(dev);

 return (&sc->services);
}
