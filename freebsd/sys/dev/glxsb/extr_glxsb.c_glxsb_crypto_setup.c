
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxsb_softc {scalar_t__ sc_cid; int sc_task_mtx; int sc_dev; } ;
struct glxsb_session {int dummy; } ;


 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTO_AES_CBC ;
 int CRYPTO_MD5_HMAC ;
 int CRYPTO_NULL_HMAC ;
 int CRYPTO_RIPEMD160_HMAC ;
 int CRYPTO_SHA1_HMAC ;
 int CRYPTO_SHA2_256_HMAC ;
 int CRYPTO_SHA2_384_HMAC ;
 int CRYPTO_SHA2_512_HMAC ;
 int ENOMEM ;
 int MTX_DEF ;
 scalar_t__ crypto_get_driverid (int ,int,int ) ;
 scalar_t__ crypto_register (scalar_t__,int ,int ,int ) ;
 int crypto_unregister_all (scalar_t__) ;
 int device_printf (int ,char*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
glxsb_crypto_setup(struct glxsb_softc *sc)
{

 sc->sc_cid = crypto_get_driverid(sc->sc_dev,
     sizeof(struct glxsb_session), CRYPTOCAP_F_HARDWARE);

 if (sc->sc_cid < 0) {
  device_printf(sc->sc_dev, "cannot get crypto driver id\n");
  return (ENOMEM);
 }

 mtx_init(&sc->sc_task_mtx, "glxsb_crypto_mtx", ((void*)0), MTX_DEF);

 if (crypto_register(sc->sc_cid, CRYPTO_AES_CBC, 0, 0) != 0)
  goto crypto_fail;
 if (crypto_register(sc->sc_cid, CRYPTO_NULL_HMAC, 0, 0) != 0)
  goto crypto_fail;
 if (crypto_register(sc->sc_cid, CRYPTO_MD5_HMAC, 0, 0) != 0)
  goto crypto_fail;
 if (crypto_register(sc->sc_cid, CRYPTO_SHA1_HMAC, 0, 0) != 0)
  goto crypto_fail;
 if (crypto_register(sc->sc_cid, CRYPTO_RIPEMD160_HMAC, 0, 0) != 0)
  goto crypto_fail;
 if (crypto_register(sc->sc_cid, CRYPTO_SHA2_256_HMAC, 0, 0) != 0)
  goto crypto_fail;
 if (crypto_register(sc->sc_cid, CRYPTO_SHA2_384_HMAC, 0, 0) != 0)
  goto crypto_fail;
 if (crypto_register(sc->sc_cid, CRYPTO_SHA2_512_HMAC, 0, 0) != 0)
  goto crypto_fail;

 return (0);

crypto_fail:
 device_printf(sc->sc_dev, "cannot register crypto\n");
 crypto_unregister_all(sc->sc_cid);
 mtx_destroy(&sc->sc_task_mtx);
 return (ENOMEM);
}
