
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpr_softc {TYPE_1__* sassc; } ;
struct mpr_fw_event_work {int dummy; } ;
struct TYPE_2__ {int ev_queue; } ;


 struct mpr_fw_event_work* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct mpr_fw_event_work*,int ) ;
 int ev_link ;
 int mpr_lock (struct mpr_softc*) ;
 int mpr_unlock (struct mpr_softc*) ;
 int mprsas_fw_work (struct mpr_softc*,struct mpr_fw_event_work*) ;

void
mprsas_firmware_event_work(void *arg, int pending)
{
 struct mpr_fw_event_work *fw_event;
 struct mpr_softc *sc;

 sc = (struct mpr_softc *)arg;
 mpr_lock(sc);
 while ((fw_event = TAILQ_FIRST(&sc->sassc->ev_queue)) != ((void*)0)) {
  TAILQ_REMOVE(&sc->sassc->ev_queue, fw_event, ev_link);
  mprsas_fw_work(sc, fw_event);
 }
 mpr_unlock(sc);
}
