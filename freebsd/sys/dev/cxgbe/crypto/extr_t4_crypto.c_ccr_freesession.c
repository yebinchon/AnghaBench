
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccr_softc {int lock; } ;
struct ccr_session {scalar_t__ pending; int active; } ;
typedef int device_t ;
typedef int crypto_session_t ;


 struct ccr_session* crypto_get_driver_session (int ) ;
 struct ccr_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,struct ccr_session*,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ccr_freesession(device_t dev, crypto_session_t cses)
{
 struct ccr_softc *sc;
 struct ccr_session *s;

 sc = device_get_softc(dev);
 s = crypto_get_driver_session(cses);
 mtx_lock(&sc->lock);
 if (s->pending != 0)
  device_printf(dev,
      "session %p freed with %d pending requests\n", s,
      s->pending);
 s->active = 0;
 mtx_unlock(&sc->lock);
}
