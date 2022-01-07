
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_chipid {int dummy; } ;
struct bhndb_softc {struct bhnd_chipid const chipid; } ;
typedef int device_t ;


 struct bhndb_softc* device_get_softc (int ) ;

__attribute__((used)) static const struct bhnd_chipid *
bhndb_get_chipid(device_t dev, device_t child)
{
 struct bhndb_softc *sc = device_get_softc(dev);
 return (&sc->chipid);
}
