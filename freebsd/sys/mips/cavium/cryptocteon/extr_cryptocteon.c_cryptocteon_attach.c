
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octo_sess {int dummy; } ;
struct cryptocteon_softc {scalar_t__ sc_cid; } ;
typedef int device_t ;


 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTOCAP_F_SYNC ;
 int CRYPTO_3DES_CBC ;
 int CRYPTO_AES_CBC ;
 int CRYPTO_DES_CBC ;
 int CRYPTO_MD5_HMAC ;
 int CRYPTO_SHA1_HMAC ;
 int ENXIO ;
 scalar_t__ crypto_get_driverid (int ,int,int) ;
 int crypto_register (scalar_t__,int ,int ,int ) ;
 struct cryptocteon_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static int
cryptocteon_attach(device_t dev)
{
 struct cryptocteon_softc *sc;

 sc = device_get_softc(dev);

 sc->sc_cid = crypto_get_driverid(dev, sizeof(struct octo_sess),
     CRYPTOCAP_F_HARDWARE | CRYPTOCAP_F_SYNC);
 if (sc->sc_cid < 0) {
  device_printf(dev, "crypto_get_driverid ret %d\n", sc->sc_cid);
  return (ENXIO);
 }

 crypto_register(sc->sc_cid, CRYPTO_MD5_HMAC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_SHA1_HMAC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_DES_CBC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_3DES_CBC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_AES_CBC, 0, 0);

 return (0);
}
