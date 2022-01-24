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
struct ess_info {int /*<<< orphan*/  bufsize; void* drq2; void* drq1; void* irq; void* io_base; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static int
FUNC4(struct ess_info *sc, device_t dev)
{
	int rid;

	rid = 0;
	if (!sc->io_base)
    		sc->io_base = FUNC0(dev, SYS_RES_IOPORT,
						     &rid, RF_ACTIVE);
	rid = 0;
	if (!sc->irq)
    		sc->irq = FUNC0(dev, SYS_RES_IRQ,
						 &rid, RF_ACTIVE);
	rid = 0;
	if (!sc->drq1)
    		sc->drq1 = FUNC0(dev, SYS_RES_DRQ,
						  &rid, RF_ACTIVE);
	rid = 1;
	if (!sc->drq2)
        	sc->drq2 = FUNC0(dev, SYS_RES_DRQ,
						  &rid, RF_ACTIVE);

    	if (sc->io_base && sc->drq1 && sc->irq) {
  		FUNC1(FUNC3(sc->drq1));
		FUNC2(FUNC3(sc->drq1), sc->bufsize);

		if (sc->drq2) {
			FUNC1(FUNC3(sc->drq2));
			FUNC2(FUNC3(sc->drq2), sc->bufsize);
		}

		return 0;
	} else return ENXIO;
}