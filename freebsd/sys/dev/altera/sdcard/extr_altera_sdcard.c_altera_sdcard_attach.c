
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_sdcard_softc {int as_task; int as_taskqueue; int as_unit; int as_state; int * as_currentbio; int as_bioq; int * as_disk; } ;


 int ALTERA_SDCARD_CONDVAR_INIT (struct altera_sdcard_softc*) ;
 int ALTERA_SDCARD_LOCK_INIT (struct altera_sdcard_softc*) ;
 int ALTERA_SDCARD_STATE_NOCARD ;
 int M_WAITOK ;
 int PI_DISK ;
 int TIMEOUT_TASK_INIT (int ,int *,int ,int (*) (struct altera_sdcard_softc*,int),struct altera_sdcard_softc*) ;
 int altera_sdcard_task (struct altera_sdcard_softc*,int) ;
 int bioq_init (int *) ;
 int taskqueue_create (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

void
altera_sdcard_attach(struct altera_sdcard_softc *sc)
{

 ALTERA_SDCARD_LOCK_INIT(sc);
 ALTERA_SDCARD_CONDVAR_INIT(sc);
 sc->as_disk = ((void*)0);
 bioq_init(&sc->as_bioq);
 sc->as_currentbio = ((void*)0);
 sc->as_state = ALTERA_SDCARD_STATE_NOCARD;
 sc->as_taskqueue = taskqueue_create("altera_sdcardc taskq", M_WAITOK,
     taskqueue_thread_enqueue, &sc->as_taskqueue);
 taskqueue_start_threads(&sc->as_taskqueue, 1, PI_DISK,
     "altera_sdcardc%d taskqueue", sc->as_unit);
 TIMEOUT_TASK_INIT(sc->as_taskqueue, &sc->as_task, 0,
     altera_sdcard_task, sc);






 altera_sdcard_task(sc, 1);
}
