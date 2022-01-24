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
struct pvscsi_softc {int /*<<< orphan*/  dev; scalar_t__ use_msi_or_msix; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  irq_id; int /*<<< orphan*/ * irq_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct pvscsi_softc *sc)
{

	if (sc->irq_handler != NULL) {
		FUNC1(sc->dev, sc->irq_res, sc->irq_handler);
	}
	if (sc->irq_res != NULL) {
		FUNC0(sc->dev, SYS_RES_IRQ, sc->irq_id,
		    sc->irq_res);
	}
	if (sc->use_msi_or_msix) {
		FUNC2(sc->dev);
	}
}