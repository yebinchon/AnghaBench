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
struct sc_info {int /*<<< orphan*/  ich_lock; int /*<<< orphan*/  dmat; int /*<<< orphan*/  chan_dmat; int /*<<< orphan*/  dtmap; int /*<<< orphan*/  dtbl; int /*<<< orphan*/  nabmbar; int /*<<< orphan*/  nabmbarid; int /*<<< orphan*/  regtype; int /*<<< orphan*/  nambar; int /*<<< orphan*/  nambarid; int /*<<< orphan*/  irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/  ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct sc_info *sc;
	int r;

	r = FUNC7(dev);
	if (r)
		return (r);
	sc = FUNC6(dev);

	FUNC4(dev, sc->irq, sc->ih);
	FUNC3(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	FUNC3(dev, sc->regtype, sc->nambarid, sc->nambar);
	FUNC3(dev, sc->regtype, sc->nabmbarid, sc->nabmbar);
	FUNC1(sc->dmat, sc->dtmap);
	FUNC2(sc->dmat, sc->dtbl, sc->dtmap);
	FUNC0(sc->chan_dmat);
	FUNC0(sc->dmat);
	FUNC8(sc->ich_lock);
	FUNC5(sc, M_DEVBUF);
	return (0);
}