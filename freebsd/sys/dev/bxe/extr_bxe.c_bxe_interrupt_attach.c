
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_softc {int unit; int num_queues; scalar_t__ interrupt_mode; TYPE_1__* intr; int dev; int state; struct bxe_softc* fp; int tq_name; void* tq; int tx_timeout_task; int tx_task; int tq_task; int sp_tq_name; void* sp_tq; int sp_tq_task; } ;
struct bxe_fastpath {int unit; int num_queues; scalar_t__ interrupt_mode; TYPE_1__* intr; int dev; int state; struct bxe_fastpath* fp; int tq_name; void* tq; int tx_timeout_task; int tx_task; int tq_task; int sp_tq_name; void* sp_tq; int sp_tq_task; } ;
struct TYPE_2__ {int tag; int resource; } ;


 int BLOGD (struct bxe_softc*,int ,char*,...) ;
 int BLOGE (struct bxe_softc*,char*,int,...) ;
 int BXE_FP_STATE_IRQ ;
 int DBG_LOAD ;
 scalar_t__ INTR_MODE_MSI ;
 scalar_t__ INTR_MODE_MSIX ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int M_NOWAIT ;
 int PI_NET ;
 int PWAIT ;
 int TASK_INIT (int *,int ,int ,struct bxe_softc*) ;
 int TIMEOUT_TASK_INIT (void*,int *,int ,int ,struct bxe_softc*) ;
 int bus_bind_intr (int ,int ,int) ;
 int bus_describe_intr (int ,int ,int ,char*,...) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct bxe_softc*,int *) ;
 int bxe_handle_fp_tq ;
 int bxe_handle_sp_tq ;
 int bxe_intr_fp ;
 int bxe_intr_legacy ;
 int bxe_intr_sp ;
 int bxe_tx_mq_start_deferred ;
 int snprintf (int ,int,char*,int,...) ;
 void* taskqueue_create (int ,int ,int ,void**) ;
 int taskqueue_start_threads (void**,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
bxe_interrupt_attach(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    int rc = 0;
    int i;

    snprintf(sc->sp_tq_name, sizeof(sc->sp_tq_name),
             "bxe%d_sp_tq", sc->unit);
    TASK_INIT(&sc->sp_tq_task, 0, bxe_handle_sp_tq, sc);
    sc->sp_tq = taskqueue_create(sc->sp_tq_name, M_NOWAIT,
                                 taskqueue_thread_enqueue,
                                 &sc->sp_tq);
    taskqueue_start_threads(&sc->sp_tq, 1, PWAIT,
                            "%s", sc->sp_tq_name);


    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];
        snprintf(fp->tq_name, sizeof(fp->tq_name),
                 "bxe%d_fp%d_tq", sc->unit, i);
        TASK_INIT(&fp->tq_task, 0, bxe_handle_fp_tq, fp);
        TASK_INIT(&fp->tx_task, 0, bxe_tx_mq_start_deferred, fp);
        fp->tq = taskqueue_create(fp->tq_name, M_NOWAIT,
                                  taskqueue_thread_enqueue,
                                  &fp->tq);
        TIMEOUT_TASK_INIT(fp->tq, &fp->tx_timeout_task, 0,
                          bxe_tx_mq_start_deferred, fp);
        taskqueue_start_threads(&fp->tq, 1, PI_NET,
                                "%s", fp->tq_name);
    }


    if (sc->interrupt_mode == INTR_MODE_MSIX) {
        BLOGD(sc, DBG_LOAD, "Enabling slowpath MSI-X[0] vector\n");





        if ((rc = bus_setup_intr(sc->dev, sc->intr[0].resource,
                                 (INTR_TYPE_NET | INTR_MPSAFE),
                                 ((void*)0), bxe_intr_sp, sc,
                                 &sc->intr[0].tag)) != 0) {
            BLOGE(sc, "Failed to allocate MSI-X[0] vector (%d)\n", rc);
            goto bxe_interrupt_attach_exit;
        }

        bus_describe_intr(sc->dev, sc->intr[0].resource,
                          sc->intr[0].tag, "sp");




        for (i = 0; i < sc->num_queues; i++) {
            fp = &sc->fp[i];
            BLOGD(sc, DBG_LOAD, "Enabling MSI-X[%d] vector\n", (i + 1));






            if ((rc = bus_setup_intr(sc->dev, sc->intr[i + 1].resource,
                                     (INTR_TYPE_NET | INTR_MPSAFE),
                                     ((void*)0), bxe_intr_fp, fp,
                                     &sc->intr[i + 1].tag)) != 0) {
                BLOGE(sc, "Failed to allocate MSI-X[%d] vector (%d)\n",
                      (i + 1), rc);
                goto bxe_interrupt_attach_exit;
            }

            bus_describe_intr(sc->dev, sc->intr[i + 1].resource,
                              sc->intr[i + 1].tag, "fp%02d", i);


            if (sc->num_queues > 1) {
                bus_bind_intr(sc->dev, sc->intr[i + 1].resource, i);
            }

            fp->state = BXE_FP_STATE_IRQ;
        }
    } else if (sc->interrupt_mode == INTR_MODE_MSI) {
        BLOGD(sc, DBG_LOAD, "Enabling MSI[0] vector\n");






        if ((rc = bus_setup_intr(sc->dev, sc->intr[0].resource,
                                 (INTR_TYPE_NET | INTR_MPSAFE),
                                 ((void*)0), bxe_intr_legacy, sc,
                                 &sc->intr[0].tag)) != 0) {
            BLOGE(sc, "Failed to allocate MSI[0] vector (%d)\n", rc);
            goto bxe_interrupt_attach_exit;
        }

    } else {
        BLOGD(sc, DBG_LOAD, "Enabling INTx interrupts\n");






        if ((rc = bus_setup_intr(sc->dev, sc->intr[0].resource,
                                 (INTR_TYPE_NET | INTR_MPSAFE),
                                 ((void*)0), bxe_intr_legacy, sc,
                                 &sc->intr[0].tag)) != 0) {
            BLOGE(sc, "Failed to allocate INTx interrupt (%d)\n", rc);
            goto bxe_interrupt_attach_exit;
        }
    }

bxe_interrupt_attach_exit:

    return (rc);
}
