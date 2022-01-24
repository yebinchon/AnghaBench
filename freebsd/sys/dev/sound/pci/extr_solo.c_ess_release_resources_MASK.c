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
struct ess_info {int /*<<< orphan*/ * lock; scalar_t__ parent_dmat; int /*<<< orphan*/ * gp; int /*<<< orphan*/ * mpu; int /*<<< orphan*/ * vc; int /*<<< orphan*/ * sb; int /*<<< orphan*/ * io; int /*<<< orphan*/ * irq; scalar_t__ ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ess_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ess_info *sc, device_t dev)
{
    	if (sc->irq) {
		if (sc->ih)
			FUNC3(dev, sc->irq, sc->ih);
		FUNC2(dev, SYS_RES_IRQ, 0, sc->irq);
		sc->irq = NULL;
    	}
    	if (sc->io) {
		FUNC2(dev, SYS_RES_IOPORT, FUNC0(0), sc->io);
		sc->io = NULL;
    	}

    	if (sc->sb) {
		FUNC2(dev, SYS_RES_IOPORT, FUNC0(1), sc->sb);
		sc->sb = NULL;
    	}

    	if (sc->vc) {
		FUNC2(dev, SYS_RES_IOPORT, FUNC0(2), sc->vc);
		sc->vc = NULL;
    	}

    	if (sc->mpu) {
		FUNC2(dev, SYS_RES_IOPORT, FUNC0(3), sc->mpu);
		sc->mpu = NULL;
    	}

    	if (sc->gp) {
		FUNC2(dev, SYS_RES_IOPORT, FUNC0(4), sc->gp);
		sc->gp = NULL;
    	}

	if (sc->parent_dmat) {
		FUNC1(sc->parent_dmat);
		sc->parent_dmat = 0;
    	}

#if ESS18XX_MPSAFE == 1
	if (sc->lock) {
		snd_mtxfree(sc->lock);
		sc->lock = NULL;
	}
#endif

    	FUNC4(sc, M_DEVBUF);
}