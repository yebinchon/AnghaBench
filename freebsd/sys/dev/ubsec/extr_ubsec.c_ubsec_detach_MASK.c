#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  q_ctx; int /*<<< orphan*/  q_mcr; } ;
struct TYPE_6__ {int /*<<< orphan*/  rng_buf; TYPE_2__ rng_q; } ;
struct ubsec_softc {int sc_flags; int /*<<< orphan*/  sc_sr; int /*<<< orphan*/  sc_dmat; int /*<<< orphan*/  sc_irq; int /*<<< orphan*/  sc_ih; int /*<<< orphan*/  sc_mcr2lock; TYPE_3__ sc_rng; int /*<<< orphan*/  sc_freeqlock; int /*<<< orphan*/  sc_mcr1lock; int /*<<< orphan*/  sc_freequeue; scalar_t__ sc_rndtest; int /*<<< orphan*/  sc_cid; int /*<<< orphan*/  sc_rngto; } ;
struct ubsec_q {TYPE_1__* q_dma; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  d_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BS_BAR ; 
 int /*<<< orphan*/  BS_CTRL ; 
 int BS_CTRL_DMAERR ; 
 int BS_CTRL_MCR1INT ; 
 int BS_CTRL_MCR2INT ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int FUNC0 (struct ubsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ubsec_q* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int UBS_FLAGS_RNG ; 
 int /*<<< orphan*/  FUNC4 (struct ubsec_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct ubsec_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ubsec_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  q_next ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct ubsec_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct ubsec_softc *sc = FUNC11(dev);

	/* XXX wait/abort active ops */

	/* disable interrupts */
	FUNC4(sc, BS_CTRL, FUNC0(sc, BS_CTRL) &~
		(BS_CTRL_MCR2INT | BS_CTRL_MCR1INT | BS_CTRL_DMAERR));

	FUNC9(&sc->sc_rngto);

	FUNC10(sc->sc_cid);

#ifdef UBSEC_RNDTEST
	if (sc->sc_rndtest)
		rndtest_detach(sc->sc_rndtest);
#endif

	while (!FUNC1(&sc->sc_freequeue)) {
		struct ubsec_q *q;

		q = FUNC2(&sc->sc_freequeue);
		FUNC3(&sc->sc_freequeue, q_next);
		FUNC15(sc, &q->q_dma->d_alloc);
		FUNC12(q, M_DEVBUF);
	}
	FUNC13(&sc->sc_mcr1lock);
	FUNC13(&sc->sc_freeqlock);
#ifndef UBSEC_NO_RNG
	if (sc->sc_flags & UBS_FLAGS_RNG) {
		FUNC15(sc, &sc->sc_rng.rng_q.q_mcr);
		FUNC15(sc, &sc->sc_rng.rng_q.q_ctx);
		FUNC15(sc, &sc->sc_rng.rng_buf);
	}
#endif /* UBSEC_NO_RNG */
	FUNC13(&sc->sc_mcr2lock);

	FUNC6(dev);
	FUNC8(dev, sc->sc_irq, sc->sc_ih);
	FUNC7(dev, SYS_RES_IRQ, 0, sc->sc_irq);

	FUNC5(sc->sc_dmat);
	FUNC7(dev, SYS_RES_MEMORY, BS_BAR, sc->sc_sr);

	return (0);
}