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
struct sc_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  irq; int /*<<< orphan*/  ih; int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	int r;
	struct sc_info *sc;

	r = FUNC7(dev);
	if (r)
		return r;

	sc = FUNC6(dev);
	/* shutdown chip */
	FUNC4(sc);

	FUNC2(dev, SYS_RES_IOPORT, FUNC0(0), sc->reg);
	FUNC3(dev, sc->irq, sc->ih);
	FUNC2(dev, SYS_RES_IRQ, 0, sc->irq);
	FUNC1(sc->parent_dmat);
	FUNC8(sc->lock);
	FUNC5(sc, M_DEVBUF);

	return 0;
}