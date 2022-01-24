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
struct sc_info {int /*<<< orphan*/  sc_lock; struct sc_info* savemem; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  reg; int /*<<< orphan*/  regid; int /*<<< orphan*/  regtype; int /*<<< orphan*/  irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/  ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sc_info*) ; 
 struct sc_info* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct sc_info *sc = FUNC9(dev);
	int r;

	FUNC0(CALL, ("m3_pci_detach\n"));

	if ((r = FUNC10(dev)) != 0) {
		return r;
	}

	FUNC1(sc);
	FUNC8(sc); /* shutdown chip */
	FUNC7(sc, 3); /* power off */
	FUNC2(sc);

	FUNC5(dev, sc->irq, sc->ih);
	FUNC4(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	FUNC4(dev, sc->regtype, sc->regid, sc->reg);
	FUNC3(sc->parent_dmat);

	FUNC6(sc->savemem, M_DEVBUF);
	FUNC11(sc->sc_lock);
	FUNC6(sc, M_DEVBUF);
	return 0;
}