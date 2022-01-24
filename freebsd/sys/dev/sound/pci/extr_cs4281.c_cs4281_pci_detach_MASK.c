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
struct sc_info {int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/  ih; int /*<<< orphan*/  mem; int /*<<< orphan*/  memid; int /*<<< orphan*/  reg; int /*<<< orphan*/  regid; int /*<<< orphan*/  regtype; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
    int r;
    struct sc_info *sc;

    r = FUNC6(dev);
    if (r)
	return r;

    sc = FUNC5(dev);

    /* power off */
    FUNC3(sc, 3);

    FUNC1(dev, sc->regtype, sc->regid, sc->reg);
    FUNC1(dev, SYS_RES_MEMORY, sc->memid, sc->mem);
    FUNC2(dev, sc->irq, sc->ih);
    FUNC1(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
    FUNC0(sc->parent_dmat);
    FUNC4(sc, M_DEVBUF);

    return 0;
}