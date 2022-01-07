
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxsb_softc {int dummy; } ;
struct glxsb_session {int dummy; } ;
typedef int device_t ;
typedef int crypto_session_t ;


 struct glxsb_session* crypto_get_driver_session (int ) ;
 struct glxsb_softc* device_get_softc (int ) ;
 int glxsb_hash_free (struct glxsb_session*) ;

__attribute__((used)) static void
glxsb_crypto_freesession(device_t dev, crypto_session_t cses)
{
 struct glxsb_softc *sc = device_get_softc(dev);
 struct glxsb_session *ses;

 if (sc == ((void*)0))
  return;

 ses = crypto_get_driver_session(cses);
 glxsb_hash_free(ses);
}
