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
struct mlx_softc {int /*<<< orphan*/  mlx_io_lock; int /*<<< orphan*/  mlx_config_lock; int /*<<< orphan*/ * mlx_enq2; int /*<<< orphan*/ * mlx_mem; int /*<<< orphan*/  mlx_mem_rid; int /*<<< orphan*/  mlx_mem_type; int /*<<< orphan*/  mlx_dev; scalar_t__ mlx_parent_dmat; int /*<<< orphan*/ * mlx_irq; scalar_t__ mlx_sg_dmat; int /*<<< orphan*/  mlx_sg_dmamap; scalar_t__ mlx_sgtable; scalar_t__ mlx_sgbusaddr; scalar_t__ mlx_buffer_dmat; int /*<<< orphan*/  mlx_timeout; int /*<<< orphan*/  mlx_freecmds; scalar_t__ mlx_intr; int /*<<< orphan*/ * mlx_dev_t; } ;
struct mlx_command {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_softc*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 struct mlx_command* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mlx_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mc_link ; 
 int /*<<< orphan*/  FUNC14 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

void
FUNC17(struct mlx_softc *sc)
{
    struct mlx_command	*mc;

    FUNC11(1);

    /* destroy control device */
    if (sc->mlx_dev_t != NULL)
	FUNC12(sc->mlx_dev_t);

    if (sc->mlx_intr)
	FUNC8(sc->mlx_dev, sc->mlx_irq, sc->mlx_intr);

    /* cancel status timeout */
    FUNC0(sc);
    FUNC10(&sc->mlx_timeout);

    /* throw away any command buffers */
    while ((mc = FUNC2(&sc->mlx_freecmds)) != NULL) {
	FUNC3(&sc->mlx_freecmds, mc, mc_link);
	FUNC14(mc);
    }
    FUNC1(sc);
    FUNC9(&sc->mlx_timeout);

    /* destroy data-transfer DMA tag */
    if (sc->mlx_buffer_dmat)
	FUNC4(sc->mlx_buffer_dmat);

    /* free and destroy DMA memory and tag for s/g lists */
    if (sc->mlx_sgbusaddr)
	FUNC5(sc->mlx_sg_dmat, sc->mlx_sg_dmamap);
    if (sc->mlx_sgtable)
	FUNC6(sc->mlx_sg_dmat, sc->mlx_sgtable, sc->mlx_sg_dmamap);
    if (sc->mlx_sg_dmat)
	FUNC4(sc->mlx_sg_dmat);

    /* disconnect the interrupt handler */
    if (sc->mlx_irq != NULL)
	FUNC7(sc->mlx_dev, SYS_RES_IRQ, 0, sc->mlx_irq);

    /* destroy the parent DMA tag */
    if (sc->mlx_parent_dmat)
	FUNC4(sc->mlx_parent_dmat);

    /* release the register window mapping */
    if (sc->mlx_mem != NULL)
	FUNC7(sc->mlx_dev, sc->mlx_mem_type, sc->mlx_mem_rid, sc->mlx_mem);

    /* free controller enquiry data */
    if (sc->mlx_enq2 != NULL)
	FUNC13(sc->mlx_enq2, M_DEVBUF);

    FUNC16(&sc->mlx_config_lock);
    FUNC15(&sc->mlx_io_lock);
}