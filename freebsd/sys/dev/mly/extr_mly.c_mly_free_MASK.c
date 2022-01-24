#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mly_softc {int /*<<< orphan*/  mly_lock; int /*<<< orphan*/ * mly_regs_resource; int /*<<< orphan*/  mly_regs_rid; int /*<<< orphan*/  mly_dev; scalar_t__ mly_parent_dmat; int /*<<< orphan*/ * mly_irq; int /*<<< orphan*/  mly_irq_rid; scalar_t__ mly_mmbox_dmat; int /*<<< orphan*/  mly_mmbox_dmamap; scalar_t__ mly_mmbox; scalar_t__ mly_sg_dmat; int /*<<< orphan*/  mly_sg_dmamap; scalar_t__ mly_sg_table; scalar_t__ mly_buffer_dmat; int /*<<< orphan*/ * mly_controllerparam; int /*<<< orphan*/ * mly_controllerinfo; int /*<<< orphan*/  mly_timeout; int /*<<< orphan*/  mly_periodic; scalar_t__ mly_intr; int /*<<< orphan*/  mly_dev_t; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct mly_softc *sc)
{
    
    FUNC6(1);

    /* Remove the management device */
    FUNC7(sc->mly_dev_t);

    if (sc->mly_intr)
	FUNC4(sc->mly_dev, sc->mly_irq, sc->mly_intr);
    FUNC5(&sc->mly_periodic);
#ifdef MLY_DEBUG
    callout_drain(&sc->mly_timeout);
#endif

    /* detach from CAM */
    FUNC9(sc);

    /* release command memory */
    FUNC10(sc);
    
    /* throw away the controllerinfo structure */
    if (sc->mly_controllerinfo != NULL)
	FUNC8(sc->mly_controllerinfo, M_DEVBUF);

    /* throw away the controllerparam structure */
    if (sc->mly_controllerparam != NULL)
	FUNC8(sc->mly_controllerparam, M_DEVBUF);

    /* destroy data-transfer DMA tag */
    if (sc->mly_buffer_dmat)
	FUNC0(sc->mly_buffer_dmat);

    /* free and destroy DMA memory and tag for s/g lists */
    if (sc->mly_sg_table) {
	FUNC1(sc->mly_sg_dmat, sc->mly_sg_dmamap);
	FUNC2(sc->mly_sg_dmat, sc->mly_sg_table, sc->mly_sg_dmamap);
    }
    if (sc->mly_sg_dmat)
	FUNC0(sc->mly_sg_dmat);

    /* free and destroy DMA memory and tag for memory mailbox */
    if (sc->mly_mmbox) {
	FUNC1(sc->mly_mmbox_dmat, sc->mly_mmbox_dmamap);
	FUNC2(sc->mly_mmbox_dmat, sc->mly_mmbox, sc->mly_mmbox_dmamap);
    }
    if (sc->mly_mmbox_dmat)
	FUNC0(sc->mly_mmbox_dmat);

    /* disconnect the interrupt handler */
    if (sc->mly_irq != NULL)
	FUNC3(sc->mly_dev, SYS_RES_IRQ, sc->mly_irq_rid, sc->mly_irq);

    /* destroy the parent DMA tag */
    if (sc->mly_parent_dmat)
	FUNC0(sc->mly_parent_dmat);

    /* release the register window mapping */
    if (sc->mly_regs_resource != NULL)
	FUNC3(sc->mly_dev, SYS_RES_MEMORY, sc->mly_regs_rid, sc->mly_regs_resource);

    FUNC11(&sc->mly_lock);
}