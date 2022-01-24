#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int irq_rr; int vector; int /*<<< orphan*/  tag; int /*<<< orphan*/ * intr_res; TYPE_1__* sc; int /*<<< orphan*/  tq; int /*<<< orphan*/  task_name; int /*<<< orphan*/  task; } ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  dev; TYPE_2__* intrs; } ;
typedef  TYPE_1__* POCE_SOFTC ;
typedef  TYPE_2__* POCE_INTR_INFO ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_NET ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int OCE_FLAGS_USING_MSIX ; 
 int OCE_MAX_EQ ; 
 int /*<<< orphan*/  PI_NET ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*,int),TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  oce_fast_isr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC8(POCE_SOFTC sc, int vector, void (*isr) (void *arg, int pending))
{
	POCE_INTR_INFO ii;
	int rc = 0, rr;

	if (vector >= OCE_MAX_EQ)
		return (EINVAL);

	ii = &sc->intrs[vector];

	/* Set the resource id for the interrupt.
	 * MSIx is vector + 1 for the resource id,
	 * INTx is 0 for the resource id.
	 */
	if (sc->flags & OCE_FLAGS_USING_MSIX)
		rr = vector + 1;
	else
		rr = 0;
	ii->intr_res = FUNC1(sc->dev,
					      SYS_RES_IRQ,
					      &rr, RF_ACTIVE|RF_SHAREABLE);
	ii->irq_rr = rr;
	if (ii->intr_res == NULL) {
		FUNC4(sc->dev,
			  "Could not allocate interrupt\n");
		rc = ENXIO;
		return rc;
	}

	FUNC0(&ii->task, 0, isr, ii);
	ii->vector = vector;
	FUNC5(ii->task_name, "oce_task[%d]", ii->vector);
	ii->tq = FUNC6(ii->task_name,
			M_NOWAIT,
			taskqueue_thread_enqueue,
			&ii->tq);
	FUNC7(&ii->tq, 1, PI_NET, "%s taskq",
			FUNC3(sc->dev));

	ii->sc = sc;
	rc = FUNC2(sc->dev,
			ii->intr_res,
			INTR_TYPE_NET,
			oce_fast_isr, NULL, ii, &ii->tag);
	return rc;

}