
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uath_softc {int sc_dev; int * sc_serial; } ;


 int IEEE80211_ADDR_LEN ;
 int ST_MAC_ADDR ;
 int ST_SERIAL_NUMBER ;
 int device_printf (int ,char*) ;
 int uath_get_status (struct uath_softc*,int ,int *,int) ;

__attribute__((used)) static int
uath_get_devstatus(struct uath_softc *sc, uint8_t macaddr[IEEE80211_ADDR_LEN])
{
 int error;


 error = uath_get_status(sc, ST_MAC_ADDR, macaddr, IEEE80211_ADDR_LEN);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not read MAC address\n");
  return (error);
 }

 error = uath_get_status(sc, ST_SERIAL_NUMBER,
     &sc->sc_serial[0], sizeof(sc->sc_serial));
 if (error != 0) {
  device_printf(sc->sc_dev,
      "could not read device serial number\n");
  return (error);
 }
 return (0);
}
