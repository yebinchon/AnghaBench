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
struct sc_info {int /*<<< orphan*/ * lock; scalar_t__ parent_dmat; int /*<<< orphan*/ * irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/ * ih; int /*<<< orphan*/ * reg; int /*<<< orphan*/  regid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(device_t dev, struct sc_info *sc)
{
	if (sc->reg) {
		FUNC1(dev, SYS_RES_IOPORT, sc->regid, sc->reg);
		sc->reg = NULL;
	}
	if (sc->ih) {
		FUNC2(dev, sc->irq, sc->ih);
		sc->ih = NULL;
	}
	if (sc->irq) {
		FUNC1(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
		sc->irq = NULL;
	}
	if (sc->parent_dmat) {
		FUNC0(sc->parent_dmat);
		sc->parent_dmat = 0;
	}
	if (sc->lock) {
		FUNC3(sc->lock);
		sc->lock = NULL;
	}
}