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
struct amr_softc {void* amr_ccb; void* amr_sgtable; int /*<<< orphan*/ * amr_reg; int /*<<< orphan*/  amr_dev; scalar_t__ amr_parent_dmat; int /*<<< orphan*/ * amr_irq; scalar_t__ amr_intr; scalar_t__ amr_mailbox_dmat; int /*<<< orphan*/  amr_mailbox_dmamap; scalar_t__ amr_mailbox; scalar_t__ amr_mailbox64; scalar_t__ amr_sg_dmat; int /*<<< orphan*/  amr_sg_dmamap; scalar_t__ amr_ccb_dmat; int /*<<< orphan*/  amr_ccb_dmamap; scalar_t__ amr_buffer64_dmat; scalar_t__ amr_buffer_dmat; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct amr_softc *sc)
{
    void *p;

    FUNC8(1);

    FUNC2(sc);

    /* destroy data-transfer DMA tag */
    if (sc->amr_buffer_dmat)
	FUNC3(sc->amr_buffer_dmat);
    if (sc->amr_buffer64_dmat)
	FUNC3(sc->amr_buffer64_dmat);

    /* free and destroy DMA memory and tag for passthrough pool */
    if (sc->amr_ccb) {
	FUNC4(sc->amr_ccb_dmat, sc->amr_ccb_dmamap);
	FUNC5(sc->amr_ccb_dmat, sc->amr_ccb, sc->amr_ccb_dmamap);
    }
    if (sc->amr_ccb_dmat)
	FUNC3(sc->amr_ccb_dmat);

    /* free and destroy DMA memory and tag for s/g lists */
    if (sc->amr_sgtable) {
	FUNC4(sc->amr_sg_dmat, sc->amr_sg_dmamap);
	FUNC5(sc->amr_sg_dmat, sc->amr_sgtable, sc->amr_sg_dmamap);
    }
    if (sc->amr_sg_dmat)
	FUNC3(sc->amr_sg_dmat);

    /* free and destroy DMA memory and tag for mailbox */
    p = (void *)(uintptr_t)(volatile void *)sc->amr_mailbox64;
    if (sc->amr_mailbox) {
	FUNC4(sc->amr_mailbox_dmat, sc->amr_mailbox_dmamap);
	FUNC5(sc->amr_mailbox_dmat, p, sc->amr_mailbox_dmamap);
    }
    if (sc->amr_mailbox_dmat)
	FUNC3(sc->amr_mailbox_dmat);

    /* disconnect the interrupt handler */
    if (sc->amr_intr)
	FUNC7(sc->amr_dev, sc->amr_irq, sc->amr_intr);
    if (sc->amr_irq != NULL)
	FUNC6(sc->amr_dev, SYS_RES_IRQ, 0, sc->amr_irq);

    /* destroy the parent DMA tag */
    if (sc->amr_parent_dmat)
	FUNC3(sc->amr_parent_dmat);

    /* release the register window mapping */
    if (sc->amr_reg != NULL)
	FUNC6(sc->amr_dev,
			     FUNC0(sc) ? SYS_RES_MEMORY : SYS_RES_IOPORT,
			     FUNC1(0), sc->amr_reg);
}