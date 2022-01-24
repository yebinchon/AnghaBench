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
struct iop_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/  dev; scalar_t__ ibase; struct i2o_registers* reg; void* r_mem; void* r_irq; } ;
struct i2o_registers {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct iop_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iop_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
    struct iop_softc *sc = FUNC3(dev);
    int rid;

    /* get resources */
    rid = FUNC0(0);
    sc->r_mem = 
	FUNC1(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);

    if (!sc->r_mem)
	return ENXIO;

    rid = 0x00;
    sc->r_irq = FUNC1(dev, SYS_RES_IRQ, &rid,
				       RF_SHAREABLE | RF_ACTIVE);

    /* now setup the infrastructure to talk to the device */
    FUNC6(dev);

    sc->ibase = FUNC7(sc->r_mem);
    sc->reg = (struct i2o_registers *)sc->ibase;
    sc->dev = dev;
    FUNC5(&sc->mtx, "pst lock", NULL, MTX_DEF);

    if (!FUNC4(sc))
	return 0;
    return FUNC2(dev);
}