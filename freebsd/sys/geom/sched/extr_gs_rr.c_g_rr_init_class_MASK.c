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
struct g_rr_softc {int /*<<< orphan*/  sc_nqueues; } ;
struct g_rr_queue {int q_budget; int q_slice_duration; int q_wait_ticks; struct g_rr_softc* q_sc; int /*<<< orphan*/  q_bioq; } ;
struct TYPE_2__ {int /*<<< orphan*/  queues; int /*<<< orphan*/  wait_ms; int /*<<< orphan*/  quantum_ms; int /*<<< orphan*/  quantum_kb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ me ; 

__attribute__((used)) static int
FUNC2(void *data, void *priv)
{
	struct g_rr_softc *sc = data;
	struct g_rr_queue *qp = priv;

	FUNC0(&qp->q_bioq);

	/*
	 * Set the initial parameters for the client:
	 * slice size in bytes and ticks, and wait ticks.
	 * Right now these are constant, but we could have
	 * autoconfiguration code to adjust the values based on
	 * the actual workload.
	 */
	qp->q_budget = 1024 * FUNC1(&me.quantum_kb, 0);
	qp->q_slice_duration = FUNC1(&me.quantum_ms, 2);
	qp->q_wait_ticks = FUNC1(&me.wait_ms, 2);

	qp->q_sc = sc;		/* link to the parent */
	qp->q_sc->sc_nqueues++;
	me.queues++;

	return (0);
}