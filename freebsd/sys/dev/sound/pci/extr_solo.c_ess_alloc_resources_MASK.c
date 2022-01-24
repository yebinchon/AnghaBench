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
struct ess_info {void* gp; void* mpu; void* vc; void* sb; void* io; void* irq; scalar_t__ lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct ess_info *sc, device_t dev)
{
	int rid;

	rid = FUNC0(0);
    	sc->io = FUNC1(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);

	rid = FUNC0(1);
    	sc->sb = FUNC1(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);

	rid = FUNC0(2);
    	sc->vc = FUNC1(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);

	rid = FUNC0(3);
    	sc->mpu = FUNC1(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);

	rid = FUNC0(4);
    	sc->gp = FUNC1(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);

	rid = 0;
	sc->irq = FUNC1(dev, SYS_RES_IRQ, &rid,
		RF_ACTIVE | RF_SHAREABLE);

#if ESS18XX_MPSAFE == 1
	sc->lock = snd_mtxcreate(device_get_nameunit(dev), "snd_solo softc");

	return (sc->irq && sc->io && sc->sb && sc->vc &&
				sc->mpu && sc->gp && sc->lock)? 0 : ENXIO;
#else
	return (sc->irq && sc->io && sc->sb && sc->vc && sc->mpu && sc->gp)? 0 : ENXIO;
#endif
}