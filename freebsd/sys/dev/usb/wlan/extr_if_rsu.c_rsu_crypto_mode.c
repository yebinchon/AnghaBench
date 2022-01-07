
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct rsu_softc {int sc_dev; } ;





 int R92S_KEY_ALGO_AES ;
 int R92S_KEY_ALGO_INVALID ;
 int R92S_KEY_ALGO_TKIP ;
 int R92S_KEY_ALGO_WEP104 ;
 int R92S_KEY_ALGO_WEP40 ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static uint8_t
rsu_crypto_mode(struct rsu_softc *sc, u_int cipher, int keylen)
{
 switch (cipher) {
 case 128:
  return keylen < 8 ? R92S_KEY_ALGO_WEP40 : R92S_KEY_ALGO_WEP104;
 case 129:
  return R92S_KEY_ALGO_TKIP;
 case 130:
  return R92S_KEY_ALGO_AES;
 default:
  device_printf(sc->sc_dev, "unknown cipher %d\n", cipher);
  return R92S_KEY_ALGO_INVALID;
 }
}
