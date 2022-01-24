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
struct sc_info {int /*<<< orphan*/  lock; scalar_t__ mpu_reg; int /*<<< orphan*/  mpu_regid; scalar_t__ reg; int /*<<< orphan*/  regid; scalar_t__ mpu; scalar_t__ irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/  ih; int /*<<< orphan*/  parent_dmat; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 struct sc_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct sc_info *sc;
	int r;

	r = FUNC8(dev);
	if (r) return r;

	sc = FUNC7(dev);
	FUNC4(sc);
	FUNC3(sc, 3);

	FUNC0(sc->parent_dmat);
	FUNC2(dev, sc->irq, sc->ih);
	FUNC1(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	if(sc->mpu)
		FUNC6(sc->mpu);
	FUNC1(dev, SYS_RES_IOPORT, sc->regid, sc->reg);
	if (sc->mpu_reg)
	    FUNC1(dev, SYS_RES_IOPORT, sc->mpu_regid, sc->mpu_reg);

	FUNC9(sc->lock);
	FUNC5(sc, M_DEVBUF);

	return 0;
}