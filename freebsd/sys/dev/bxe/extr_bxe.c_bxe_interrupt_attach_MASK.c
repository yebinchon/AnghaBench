#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bxe_softc {int unit; int num_queues; scalar_t__ interrupt_mode; TYPE_1__* intr; int /*<<< orphan*/  dev; int /*<<< orphan*/  state; struct bxe_softc* fp; int /*<<< orphan*/  tq_name; void* tq; int /*<<< orphan*/  tx_timeout_task; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  tq_task; int /*<<< orphan*/  sp_tq_name; void* sp_tq; int /*<<< orphan*/  sp_tq_task; } ;
struct bxe_fastpath {int unit; int num_queues; scalar_t__ interrupt_mode; TYPE_1__* intr; int /*<<< orphan*/  dev; int /*<<< orphan*/  state; struct bxe_fastpath* fp; int /*<<< orphan*/  tq_name; void* tq; int /*<<< orphan*/  tx_timeout_task; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  tq_task; int /*<<< orphan*/  sp_tq_name; void* sp_tq; int /*<<< orphan*/  sp_tq_task; } ;
struct TYPE_2__ {int /*<<< orphan*/  tag; int /*<<< orphan*/  resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int,...) ; 
 int /*<<< orphan*/  BXE_FP_STATE_IRQ ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 scalar_t__ INTR_MODE_MSI ; 
 scalar_t__ INTR_MODE_MSIX ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  PWAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bxe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bxe_handle_fp_tq ; 
 int /*<<< orphan*/  bxe_handle_sp_tq ; 
 int /*<<< orphan*/  bxe_intr_fp ; 
 int /*<<< orphan*/  bxe_intr_legacy ; 
 int /*<<< orphan*/  bxe_intr_sp ; 
 int /*<<< orphan*/  bxe_tx_mq_start_deferred ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int,...) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC9 (void**,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC10(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    int rc = 0;
    int i;

    FUNC7(sc->sp_tq_name, sizeof(sc->sp_tq_name),
             "bxe%d_sp_tq", sc->unit);
    FUNC2(&sc->sp_tq_task, 0, bxe_handle_sp_tq, sc);
    sc->sp_tq = FUNC8(sc->sp_tq_name, M_NOWAIT,
                                 taskqueue_thread_enqueue,
                                 &sc->sp_tq);
    FUNC9(&sc->sp_tq, 1, PWAIT, /* lower priority */
                            "%s", sc->sp_tq_name);


    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];
        FUNC7(fp->tq_name, sizeof(fp->tq_name),
                 "bxe%d_fp%d_tq", sc->unit, i);
        FUNC2(&fp->tq_task, 0, bxe_handle_fp_tq, fp);
        FUNC2(&fp->tx_task, 0, bxe_tx_mq_start_deferred, fp);
        fp->tq = FUNC8(fp->tq_name, M_NOWAIT,
                                  taskqueue_thread_enqueue,
                                  &fp->tq);
        FUNC3(fp->tq, &fp->tx_timeout_task, 0,
                          bxe_tx_mq_start_deferred, fp);
        FUNC9(&fp->tq, 1, PI_NET, /* higher priority */
                                "%s", fp->tq_name);
    }

    /* setup interrupt handlers */
    if (sc->interrupt_mode == INTR_MODE_MSIX) {
        FUNC0(sc, DBG_LOAD, "Enabling slowpath MSI-X[0] vector\n");

        /*
         * Setup the interrupt handler. Note that we pass the driver instance
         * to the interrupt handler for the slowpath.
         */
        if ((rc = FUNC6(sc->dev, sc->intr[0].resource,
                                 (INTR_TYPE_NET | INTR_MPSAFE),
                                 NULL, bxe_intr_sp, sc,
                                 &sc->intr[0].tag)) != 0) {
            FUNC1(sc, "Failed to allocate MSI-X[0] vector (%d)\n", rc);
            goto bxe_interrupt_attach_exit;
        }

        FUNC5(sc->dev, sc->intr[0].resource,
                          sc->intr[0].tag, "sp");

        /* bus_bind_intr(sc->dev, sc->intr[0].resource, 0); */

        /* initialize the fastpath vectors (note the first was used for sp) */
        for (i = 0; i < sc->num_queues; i++) {
            fp = &sc->fp[i];
            FUNC0(sc, DBG_LOAD, "Enabling MSI-X[%d] vector\n", (i + 1));

            /*
             * Setup the interrupt handler. Note that we pass the
             * fastpath context to the interrupt handler in this
             * case.
             */
            if ((rc = FUNC6(sc->dev, sc->intr[i + 1].resource,
                                     (INTR_TYPE_NET | INTR_MPSAFE),
                                     NULL, bxe_intr_fp, fp,
                                     &sc->intr[i + 1].tag)) != 0) {
                FUNC1(sc, "Failed to allocate MSI-X[%d] vector (%d)\n",
                      (i + 1), rc);
                goto bxe_interrupt_attach_exit;
            }

            FUNC5(sc->dev, sc->intr[i + 1].resource,
                              sc->intr[i + 1].tag, "fp%02d", i);

            /* bind the fastpath instance to a cpu */
            if (sc->num_queues > 1) {
                FUNC4(sc->dev, sc->intr[i + 1].resource, i);
            }

            fp->state = BXE_FP_STATE_IRQ;
        }
    } else if (sc->interrupt_mode == INTR_MODE_MSI) {
        FUNC0(sc, DBG_LOAD, "Enabling MSI[0] vector\n");

        /*
         * Setup the interrupt handler. Note that we pass the
         * driver instance to the interrupt handler which
         * will handle both the slowpath and fastpath.
         */
        if ((rc = FUNC6(sc->dev, sc->intr[0].resource,
                                 (INTR_TYPE_NET | INTR_MPSAFE),
                                 NULL, bxe_intr_legacy, sc,
                                 &sc->intr[0].tag)) != 0) {
            FUNC1(sc, "Failed to allocate MSI[0] vector (%d)\n", rc);
            goto bxe_interrupt_attach_exit;
        }

    } else { /* (sc->interrupt_mode == INTR_MODE_INTX) */
        FUNC0(sc, DBG_LOAD, "Enabling INTx interrupts\n");

        /*
         * Setup the interrupt handler. Note that we pass the
         * driver instance to the interrupt handler which
         * will handle both the slowpath and fastpath.
         */
        if ((rc = FUNC6(sc->dev, sc->intr[0].resource,
                                 (INTR_TYPE_NET | INTR_MPSAFE),
                                 NULL, bxe_intr_legacy, sc,
                                 &sc->intr[0].tag)) != 0) {
            FUNC1(sc, "Failed to allocate INTx interrupt (%d)\n", rc);
            goto bxe_interrupt_attach_exit;
        }
    }

bxe_interrupt_attach_exit:

    return (rc);
}