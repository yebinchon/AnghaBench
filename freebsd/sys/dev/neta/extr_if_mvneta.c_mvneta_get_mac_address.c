
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct mvneta_softc {int dev; } ;


 int MVNETA_MACAH ;
 int MVNETA_MACAL ;
 int MVNETA_READ (struct mvneta_softc*,int ) ;
 int arc4random () ;
 scalar_t__ bootverbose ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ mvneta_fdt_mac_address (struct mvneta_softc*,int*) ;

__attribute__((used)) static int
mvneta_get_mac_address(struct mvneta_softc *sc, uint8_t *addr)
{
 uint32_t mac_l, mac_h;
 mac_l = MVNETA_READ(sc, MVNETA_MACAL);
 mac_h = MVNETA_READ(sc, MVNETA_MACAH);
 if (mac_l == 0 && mac_h == 0) {




  mac_l = arc4random() & ~0xff;
  mac_l |= device_get_unit(sc->dev) & 0xff;
  mac_h = arc4random();
  mac_h &= ~(3 << 24);
  if (bootverbose) {
   device_printf(sc->dev,
       "Could not acquire MAC address. "
       "Using randomized one.\n");
  }
 }

 addr[0] = (mac_h & 0xff000000) >> 24;
 addr[1] = (mac_h & 0x00ff0000) >> 16;
 addr[2] = (mac_h & 0x0000ff00) >> 8;
 addr[3] = (mac_h & 0x000000ff);
 addr[4] = (mac_l & 0x0000ff00) >> 8;
 addr[5] = (mac_l & 0x000000ff);
 return (0);
}
