
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_softc {int sc_dev; int sc_tq; int sc_snd; int sc_mtx; int sc_watchdog_ch; int sc_task_ch; int sc_rfswitch_ch; int sc_maclist; } ;


 int BWN_LOCK_INIT (struct bwn_softc*) ;
 int M_NOWAIT ;
 int PI_NET ;
 int TAILQ_INIT (int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_nameunit (int ) ;
 int ifqmaxlen ;
 int mbufq_init (int *,int ) ;
 int taskqueue_create_fast (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static void
bwn_attach_pre(struct bwn_softc *sc)
{

 BWN_LOCK_INIT(sc);
 TAILQ_INIT(&sc->sc_maclist);
 callout_init_mtx(&sc->sc_rfswitch_ch, &sc->sc_mtx, 0);
 callout_init_mtx(&sc->sc_task_ch, &sc->sc_mtx, 0);
 callout_init_mtx(&sc->sc_watchdog_ch, &sc->sc_mtx, 0);
 mbufq_init(&sc->sc_snd, ifqmaxlen);
 sc->sc_tq = taskqueue_create_fast("bwn_taskq", M_NOWAIT,
  taskqueue_thread_enqueue, &sc->sc_tq);
 taskqueue_start_threads(&sc->sc_tq, 1, PI_NET,
  "%s taskq", device_get_nameunit(sc->sc_dev));
}
