
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct adb_softc {int autopoll_mask; int parent; } ;
struct adb_devinfo {int address; } ;
typedef int device_t ;


 int ADB_HB_SET_AUTOPOLL_MASK (int ,int) ;
 struct adb_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 struct adb_softc* device_get_softc (int ) ;

u_int
adb_set_autopoll(device_t dev, u_char enable)
{
 struct adb_devinfo *dinfo;
 struct adb_softc *sc;
 uint16_t mod = 0;

 sc = device_get_softc(device_get_parent(dev));
 dinfo = device_get_ivars(dev);

 mod = enable << dinfo->address;
 if (enable) {
  sc->autopoll_mask |= mod;
 } else {
  mod = ~mod;
  sc->autopoll_mask &= mod;
 }

 ADB_HB_SET_AUTOPOLL_MASK(sc->parent,sc->autopoll_mask);

 return (0);
}
