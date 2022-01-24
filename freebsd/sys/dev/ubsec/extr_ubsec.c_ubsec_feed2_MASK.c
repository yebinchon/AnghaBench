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
struct ubsec_softc {int /*<<< orphan*/  sc_qchip2; int /*<<< orphan*/  sc_nqueue2; int /*<<< orphan*/  sc_queue2; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_paddr; } ;
struct ubsec_q2 {TYPE_1__ q_mcr; TYPE_1__ q_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BS_MCR2 ; 
 int /*<<< orphan*/  BS_STAT ; 
 int BS_STAT_MCR2_FULL ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int FUNC0 (struct ubsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ubsec_q2* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ubsec_q2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubsec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_next ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC7(struct ubsec_softc *sc)
{
	struct ubsec_q2 *q;

	while (!FUNC1(&sc->sc_queue2)) {
		if (FUNC0(sc, BS_STAT) & BS_STAT_MCR2_FULL)
			break;
		q = FUNC2(&sc->sc_queue2);

		FUNC6(&q->q_mcr,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
		FUNC6(&q->q_ctx, BUS_DMASYNC_PREWRITE);

		FUNC5(sc, BS_MCR2, q->q_mcr.dma_paddr);
		FUNC4(&sc->sc_queue2, q_next);
		--sc->sc_nqueue2;
		FUNC3(&sc->sc_qchip2, q, q_next);
	}
	return (0);
}