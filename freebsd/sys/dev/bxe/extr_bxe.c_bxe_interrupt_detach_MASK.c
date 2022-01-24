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
struct bxe_softc {int intr_count; int num_queues; int /*<<< orphan*/ * sp_tq; int /*<<< orphan*/  sp_tq_task; struct bxe_fastpath* fp; TYPE_1__* intr; int /*<<< orphan*/  dev; } ;
struct bxe_fastpath {int /*<<< orphan*/ * tq; int /*<<< orphan*/  tx_timeout_task; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  tq_task; } ;
struct TYPE_2__ {scalar_t__ tag; scalar_t__ resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    int i;

    /* release interrupt resources */
    for (i = 0; i < sc->intr_count; i++) {
        if (sc->intr[i].resource && sc->intr[i].tag) {
            FUNC0(sc, DBG_LOAD, "Disabling interrupt vector %d\n", i);
            FUNC1(sc->dev, sc->intr[i].resource, sc->intr[i].tag);
        }
    }

    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];
        if (fp->tq) {
            FUNC3(fp->tq, &fp->tq_task);
            FUNC3(fp->tq, &fp->tx_task);
            while (FUNC2(fp->tq, &fp->tx_timeout_task,
                NULL))
                FUNC4(fp->tq, &fp->tx_timeout_task);
        }

        for (i = 0; i < sc->num_queues; i++) {
            fp = &sc->fp[i];
            if (fp->tq != NULL) {
                FUNC5(fp->tq);
                fp->tq = NULL;
            }
        }
    }

    if (sc->sp_tq) {
        FUNC3(sc->sp_tq, &sc->sp_tq_task);
        FUNC5(sc->sp_tq);
        sc->sp_tq = NULL;
    }
}