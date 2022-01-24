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
struct ps3disk_softc {int sc_nregs; int /*<<< orphan*/ * sc_reg; int /*<<< orphan*/ * sc_disk; int /*<<< orphan*/  sc_irq; int /*<<< orphan*/  sc_irqid; int /*<<< orphan*/  sc_irqctx; int /*<<< orphan*/  sc_dmatag; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_PS3DISK ; 
 int /*<<< orphan*/  FUNC0 (struct ps3disk_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ps3disk_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct ps3disk_softc *sc = FUNC4(dev);
	int i;

	for (i = 0; i < sc->sc_nregs; i++)
		FUNC5(sc->sc_disk[i]);

	FUNC1(sc->sc_dmatag);

	FUNC3(dev, sc->sc_irq, sc->sc_irqctx);
	FUNC2(dev, SYS_RES_IRQ, sc->sc_irqid, sc->sc_irq);

	FUNC6(sc->sc_disk, M_PS3DISK);
	FUNC6(sc->sc_reg, M_PS3DISK);

	FUNC0(sc);

	return (0);
}