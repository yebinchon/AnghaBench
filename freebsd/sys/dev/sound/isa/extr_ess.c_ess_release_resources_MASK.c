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
struct ess_info {scalar_t__ parent_dmat; int /*<<< orphan*/ * io_base; int /*<<< orphan*/ * drq2; int /*<<< orphan*/ * drq1; int /*<<< orphan*/ * irq; scalar_t__ ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ess_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ess_info *sc, device_t dev)
{
    	if (sc->irq) {
    		if (sc->ih)
			FUNC2(dev, sc->irq, sc->ih);
		FUNC1(dev, SYS_RES_IRQ, 0, sc->irq);
		sc->irq = NULL;
    	}
    	if (sc->drq1) {
		FUNC4(FUNC5(sc->drq1));
		FUNC1(dev, SYS_RES_DRQ, 0, sc->drq1);
		sc->drq1 = NULL;
    	}
    	if (sc->drq2) {
		FUNC4(FUNC5(sc->drq2));
		FUNC1(dev, SYS_RES_DRQ, 1, sc->drq2);
		sc->drq2 = NULL;
    	}
    	if (sc->io_base) {
		FUNC1(dev, SYS_RES_IOPORT, 0, sc->io_base);
		sc->io_base = NULL;
    	}
    	if (sc->parent_dmat) {
		FUNC0(sc->parent_dmat);
		sc->parent_dmat = 0;
    	}
     	FUNC3(sc, M_DEVBUF);
}