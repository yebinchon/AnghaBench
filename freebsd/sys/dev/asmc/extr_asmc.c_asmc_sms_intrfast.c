
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct asmc_softc {int sc_sms_task; int sc_sms_tq; int sc_sms_intrtype; int sc_mtx; int sc_sms_intr_works; } ;
typedef int device_t ;


 int ASMC_INTPORT_READ (struct asmc_softc*) ;
 int FILTER_HANDLED ;
 int asmc_sms_printintr (int ,int ) ;
 struct asmc_softc* device_get_softc (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
asmc_sms_intrfast(void *arg)
{
 uint8_t type;
 device_t dev = (device_t) arg;
 struct asmc_softc *sc = device_get_softc(dev);
 if (!sc->sc_sms_intr_works)
  return (FILTER_HANDLED);

 mtx_lock_spin(&sc->sc_mtx);
 type = ASMC_INTPORT_READ(sc);
 mtx_unlock_spin(&sc->sc_mtx);

 sc->sc_sms_intrtype = type;
 asmc_sms_printintr(dev, type);

 taskqueue_enqueue(sc->sc_sms_tq, &sc->sc_sms_task);
 return (FILTER_HANDLED);
}
