#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int ich_cmd; int /*<<< orphan*/ * irq_res; scalar_t__ irq_rid; int /*<<< orphan*/ * io_res; int /*<<< orphan*/  io_rid; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  ICH_HOSTC ; 
 int /*<<< orphan*/  ICH_HOSTC_HST_EN ; 
 int /*<<< orphan*/  ICH_SMB_BASE ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	const sc_p sc = FUNC3(dev);
	int error;

	/* Initialize private state */
	FUNC2(sc, sizeof(*sc));
	sc->ich_cmd = -1;
	sc->dev = dev;

	/* Allocate an I/O range */
	sc->io_rid = ICH_SMB_BASE;
	sc->io_res = FUNC1(dev, SYS_RES_IOPORT,
	    &sc->io_rid, 16, RF_ACTIVE);
	if (sc->io_res == NULL)
		sc->io_res = FUNC1(dev, SYS_RES_IOPORT,
		    &sc->io_rid, 32, RF_ACTIVE);
	if (sc->io_res == NULL) {
		FUNC4(dev, "can't map I/O\n");
		error = ENXIO;
		goto fail;
	}

	/* Allocate interrupt */
	sc->irq_rid = 0;
	sc->irq_res = FUNC0(dev, SYS_RES_IRQ,
	    &sc->irq_rid, RF_ACTIVE | RF_SHAREABLE);
	if (sc->irq_res == NULL) {
		FUNC4(dev, "can't get IRQ\n");
		error = ENXIO;
		goto fail;
	}

	/* Enable device */
	FUNC7(dev, ICH_HOSTC, ICH_HOSTC_HST_EN, 1);

	/* Done */
	error = FUNC5(dev);
	if (error)
		goto fail;
	return (0);

fail:
	/* Attach failed, release resources */
	FUNC6(sc);
	return (error);
}