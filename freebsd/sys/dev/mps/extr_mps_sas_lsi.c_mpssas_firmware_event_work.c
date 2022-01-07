
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mps_softc {TYPE_1__* sassc; } ;
struct mps_fw_event_work {int dummy; } ;
struct TYPE_2__ {int ev_queue; } ;


 struct mps_fw_event_work* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct mps_fw_event_work*,int ) ;
 int ev_link ;
 int mps_lock (struct mps_softc*) ;
 int mps_unlock (struct mps_softc*) ;
 int mpssas_fw_work (struct mps_softc*,struct mps_fw_event_work*) ;

void
mpssas_firmware_event_work(void *arg, int pending)
{
 struct mps_fw_event_work *fw_event;
 struct mps_softc *sc;

 sc = (struct mps_softc *)arg;
 mps_lock(sc);
 while ((fw_event = TAILQ_FIRST(&sc->sassc->ev_queue)) != ((void*)0)) {
  TAILQ_REMOVE(&sc->sassc->ev_queue, fw_event, ev_link);
  mpssas_fw_work(sc, fw_event);
 }
 mps_unlock(sc);
}
