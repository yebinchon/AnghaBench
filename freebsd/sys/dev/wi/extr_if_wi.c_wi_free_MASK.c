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
struct wi_softc {int /*<<< orphan*/ * mem; int /*<<< orphan*/  mem_rid; int /*<<< orphan*/ * irq; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/ * iobase; int /*<<< orphan*/  iobase_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct wi_softc* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(device_t dev)
{
	struct wi_softc	*sc = FUNC1(dev);

	if (sc->iobase != NULL) {
		FUNC0(dev, SYS_RES_IOPORT, sc->iobase_rid, sc->iobase);
		sc->iobase = NULL;
	}
	if (sc->irq != NULL) {
		FUNC0(dev, SYS_RES_IRQ, sc->irq_rid, sc->irq);
		sc->irq = NULL;
	}
	if (sc->mem != NULL) {
		FUNC0(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem);
		sc->mem = NULL;
	}
}