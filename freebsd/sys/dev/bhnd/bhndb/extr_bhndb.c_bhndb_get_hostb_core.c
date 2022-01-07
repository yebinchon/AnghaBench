
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_core_info {int dummy; } ;
struct bhndb_softc {struct bhnd_core_info bridge_core; } ;
typedef int device_t ;


 struct bhndb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhndb_get_hostb_core(device_t dev, device_t child, struct bhnd_core_info *core)
{
 struct bhndb_softc *sc = device_get_softc(dev);

 *core = sc->bridge_core;
 return (0);
}
