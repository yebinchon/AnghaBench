
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct rum_softc {int sc_dev; } ;





 int RT2573_MODE_AES_CCMP ;
 int RT2573_MODE_TKIP ;
 int RT2573_MODE_WEP104 ;
 int RT2573_MODE_WEP40 ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static uint8_t
rum_crypto_mode(struct rum_softc *sc, u_int cipher, int keylen)
{
 switch (cipher) {
 case 128:
  return (keylen < 8 ? RT2573_MODE_WEP40 : RT2573_MODE_WEP104);
 case 129:
  return RT2573_MODE_TKIP;
 case 130:
  return RT2573_MODE_AES_CCMP;
 default:
  device_printf(sc->sc_dev, "unknown cipher %d\n", cipher);
  return 0;
 }
}
