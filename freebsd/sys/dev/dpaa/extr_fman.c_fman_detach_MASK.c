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
struct fman_softc {scalar_t__ err_irq_res; int /*<<< orphan*/  err_irq_rid; scalar_t__ irq_res; int /*<<< orphan*/  irq_rid; scalar_t__ mem_res; int /*<<< orphan*/  mem_rid; scalar_t__ fm_handle; scalar_t__ muram_handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct fman_softc* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(device_t dev)
{
	struct fman_softc *sc;

	sc = FUNC3(dev);

	if (sc->muram_handle) {
		FUNC1(sc->muram_handle);
	}

	if (sc->fm_handle) {
		FUNC0(sc->fm_handle);
	}

	if (sc->mem_res) {
		FUNC2(dev, SYS_RES_MEMORY, sc->mem_rid,
		    sc->mem_res);
	}

	if (sc->irq_res) {
		FUNC2(dev, SYS_RES_IRQ, sc->irq_rid,
		    sc->irq_res);
	}

	if (sc->irq_res) {
		FUNC2(dev, SYS_RES_IRQ, sc->err_irq_rid,
		    sc->err_irq_res);
	}

	return (0);
}