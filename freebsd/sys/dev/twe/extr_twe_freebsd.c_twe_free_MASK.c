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
struct twe_softc {int /*<<< orphan*/  twe_io_lock; int /*<<< orphan*/  twe_config_lock; struct cdev* twe_dev_t; int /*<<< orphan*/ * twe_io; int /*<<< orphan*/  twe_dev; scalar_t__ twe_parent_dmat; int /*<<< orphan*/ * twe_irq; scalar_t__ twe_intr; scalar_t__ twe_buffer_dmat; scalar_t__ twe_immediate_dmat; int /*<<< orphan*/  twe_immediate_map; int /*<<< orphan*/ * twe_immediate; int /*<<< orphan*/  twe_cmdmap; int /*<<< orphan*/ * twe_cmd; scalar_t__ twe_cmd_dmat; } ;
struct twe_request {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  TWE_IO_CONFIG_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct twe_request* FUNC9 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct twe_request*) ; 

__attribute__((used)) static void
FUNC11(struct twe_softc *sc)
{
    struct twe_request	*tr;

    FUNC5(4);

    /* throw away any command buffers */
    while ((tr = FUNC9(sc)) != NULL)
	FUNC10(tr);

    if (sc->twe_cmd != NULL) {
	FUNC1(sc->twe_cmd_dmat, sc->twe_cmdmap);
	FUNC2(sc->twe_cmd_dmat, sc->twe_cmd, sc->twe_cmdmap);
    }

    if (sc->twe_immediate != NULL) {
	FUNC1(sc->twe_immediate_dmat, sc->twe_immediate_map);
	FUNC2(sc->twe_immediate_dmat, sc->twe_immediate,
			sc->twe_immediate_map);
    }

    if (sc->twe_immediate_dmat)
	FUNC0(sc->twe_immediate_dmat);

    /* destroy the data-transfer DMA tag */
    if (sc->twe_buffer_dmat)
	FUNC0(sc->twe_buffer_dmat);

    /* disconnect the interrupt handler */
    if (sc->twe_intr)
	FUNC4(sc->twe_dev, sc->twe_irq, sc->twe_intr);
    if (sc->twe_irq != NULL)
	FUNC3(sc->twe_dev, SYS_RES_IRQ, 0, sc->twe_irq);

    /* destroy the parent DMA tag */
    if (sc->twe_parent_dmat)
	FUNC0(sc->twe_parent_dmat);

    /* release the register window mapping */
    if (sc->twe_io != NULL)
	FUNC3(sc->twe_dev, SYS_RES_IOPORT, TWE_IO_CONFIG_REG, sc->twe_io);

    /* destroy control device */
    if (sc->twe_dev_t != (struct cdev *)NULL)
	FUNC6(sc->twe_dev_t);

    FUNC8(&sc->twe_config_lock);
    FUNC7(&sc->twe_io_lock);
}