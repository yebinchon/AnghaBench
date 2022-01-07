
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_softc {int bridge_core; int parent_dev; } ;
struct bhnd_core_info {int dummy; } ;
typedef int device_t ;


 scalar_t__ BHNDB_BUS_IS_CORE_DISABLED (int ,int ,struct bhnd_core_info*) ;
 scalar_t__ BHND_DEVCLASS_SUPPORTS_HOSTB (int ) ;
 int bhnd_core_class (struct bhnd_core_info*) ;
 int bhnd_cores_equal (struct bhnd_core_info*,int *) ;
 struct bhndb_softc* device_get_softc (int ) ;

__attribute__((used)) static bool
bhndb_is_core_disabled(device_t dev, device_t child,
    struct bhnd_core_info *core)
{
 struct bhndb_softc *sc;

 sc = device_get_softc(dev);


 if (BHNDB_BUS_IS_CORE_DISABLED(sc->parent_dev, dev, core))
  return (1);



 if (BHND_DEVCLASS_SUPPORTS_HOSTB(bhnd_core_class(core)))
  return (!bhnd_cores_equal(core, &sc->bridge_core));


 return (0);
}
