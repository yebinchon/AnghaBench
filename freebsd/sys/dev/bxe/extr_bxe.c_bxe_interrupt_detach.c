
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_softc {int intr_count; int num_queues; int * sp_tq; int sp_tq_task; struct bxe_fastpath* fp; TYPE_1__* intr; int dev; } ;
struct bxe_fastpath {int * tq; int tx_timeout_task; int tx_task; int tq_task; } ;
struct TYPE_2__ {scalar_t__ tag; scalar_t__ resource; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int) ;
 int DBG_LOAD ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 scalar_t__ taskqueue_cancel_timeout (int *,int *,int *) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_drain_timeout (int *,int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static void
bxe_interrupt_detach(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    int i;


    for (i = 0; i < sc->intr_count; i++) {
        if (sc->intr[i].resource && sc->intr[i].tag) {
            BLOGD(sc, DBG_LOAD, "Disabling interrupt vector %d\n", i);
            bus_teardown_intr(sc->dev, sc->intr[i].resource, sc->intr[i].tag);
        }
    }

    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];
        if (fp->tq) {
            taskqueue_drain(fp->tq, &fp->tq_task);
            taskqueue_drain(fp->tq, &fp->tx_task);
            while (taskqueue_cancel_timeout(fp->tq, &fp->tx_timeout_task,
                ((void*)0)))
                taskqueue_drain_timeout(fp->tq, &fp->tx_timeout_task);
        }

        for (i = 0; i < sc->num_queues; i++) {
            fp = &sc->fp[i];
            if (fp->tq != ((void*)0)) {
                taskqueue_free(fp->tq);
                fp->tq = ((void*)0);
            }
        }
    }

    if (sc->sp_tq) {
        taskqueue_drain(sc->sp_tq, &sc->sp_tq_task);
        taskqueue_free(sc->sp_tq);
        sc->sp_tq = ((void*)0);
    }
}
