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
struct sc_info {int /*<<< orphan*/  irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/  ih; int /*<<< orphan*/  reg; int /*<<< orphan*/  regid; int /*<<< orphan*/  buf; int /*<<< orphan*/  bufid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int r;
	struct sc_info *sc;

	r = FUNC4(dev);
	if (r)
		return r;

	sc = FUNC3(dev);
	FUNC0(dev, SYS_RES_MEMORY, sc->bufid, sc->buf);
	FUNC0(dev, SYS_RES_MEMORY, sc->regid, sc->reg);
	FUNC1(dev, sc->irq, sc->ih);
	FUNC0(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	FUNC2(sc, M_DEVBUF);

	return 0;
}